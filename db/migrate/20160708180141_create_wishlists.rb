class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.datetime :insert_date

      t.timestamps null: false
    end
  end
end
