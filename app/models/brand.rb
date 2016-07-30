class Brand < ActiveRecord::Base
	has_many :brands,dependent: :destroy
end
