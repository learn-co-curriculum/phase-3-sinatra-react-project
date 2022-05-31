class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.string :region_chief
      t.string :weather_man
      t.string :weather
      t.string :prominent_species
      t.integer :population
    end
  end
end
