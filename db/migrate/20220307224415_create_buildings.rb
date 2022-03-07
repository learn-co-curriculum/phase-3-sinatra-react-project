class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :opened
      t.integer :stories
      t.integer :height
      t.integer :architect_id
      t.integer :city_id
      t.string :style
      t.string :map_location
      t.string :url
    end
  end
end
