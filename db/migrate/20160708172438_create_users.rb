class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :contact
      t.string :gender
      t.string :address

      t.timestamps null: false
    end
  end
end
