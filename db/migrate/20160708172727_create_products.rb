class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost_price
      t.integer :sale_price
      t.integer :quantity
      t.string :image

      t.timestamps null: false
    end
  end
end
