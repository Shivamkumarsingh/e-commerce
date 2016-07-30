class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :offer_price
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps null: false
    end
  end
end
