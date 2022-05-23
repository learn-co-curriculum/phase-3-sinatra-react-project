class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address

      t.integer :neighborhood_id
      t.integer :household_id

      t.timestamps
    end
  end
end
