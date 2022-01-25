class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :park_name
      t.string :description
      t.integer :fee
      t.string :image_url
      t.string :location
      t.integer :state_id
      t.integer :list_id
    end
  end
end
