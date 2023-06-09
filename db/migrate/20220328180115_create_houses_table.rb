class CreateHousesTable < ActiveRecord::Migration[6.1]
    def change
      create_table :houses do |t|
        t.string :image
        t.string :location
        t.string :description
      end
    end
  end