class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :cuisine_id
      t.integer :delivery_time
      t.string :display_image_url
      t.integer :price_gauge
    end
  end
end
