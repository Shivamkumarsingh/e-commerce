class AddProductRefToOffer < ActiveRecord::Migration
  def change
    add_reference :offers, :product, index: true, foreign_key: true
  end
end
