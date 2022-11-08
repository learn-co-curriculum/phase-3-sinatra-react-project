class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.string  :name
      t.string  :image
      t.string  :description
      t.integer :location_id
      t.string  :apartments
      t.string  :amenities
    end
  end
end
