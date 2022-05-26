class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address

      t.belongs_to :neighborhood
      t.belongs_to :household

      t.timestamps


    end
  end
end
