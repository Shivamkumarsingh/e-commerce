class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :brand
	has_one :offer
	has_and_belongs_to_many :ratings
	has_many :wishlists
	has_many :orders
	
	has_attached_file :image, :styles => { :medium => "238x238>", 
                                    :thumb => "100x100>"
                                     } 
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    scope :men,-> {where(category_id: 3)}
     scope :women,-> {where(category_id: 4)}
      scope :kids,-> {where(category_id: 5)}
       scope :sports,-> {where(category_id: 6)}
        scope :books,-> {where(category_id: 7)}
         scope :electronics,-> {where(category_id: 8)}



end
