class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :quantity
      t.integer :order_amount
      t.integer :discount
      t.integer :shipping_amount
      t.string :net_amount

      t.timestamps null: false
    end
  end
end
