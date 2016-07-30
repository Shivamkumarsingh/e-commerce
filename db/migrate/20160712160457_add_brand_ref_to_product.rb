class AddBrandRefToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :brand, index: true, foreign_key: true,dependent: :destroy
  end
end
