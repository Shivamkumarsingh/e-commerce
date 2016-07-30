class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :name
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
