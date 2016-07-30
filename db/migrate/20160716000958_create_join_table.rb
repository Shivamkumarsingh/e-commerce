class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :products, :ratings do |t|
       t.index :product_id
       t.index :rating_id
    end
  end
end
