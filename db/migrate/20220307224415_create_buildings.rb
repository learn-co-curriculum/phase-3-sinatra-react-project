class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :opened
      t.integer :architect_id
      t.integer :city_id
      t.string :map_location
      t.string :image_url
      t.string :description
    end
  end
end
