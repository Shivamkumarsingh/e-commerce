class DropTableCartItem < ActiveRecord::Migration
  def change
  	drop_table(CartItem)
  end
end
