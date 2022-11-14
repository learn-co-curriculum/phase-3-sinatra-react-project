class CreateRestaurantImages < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_images do |t|
      t.integer :restaurant_id
      t.string :image_url
    end
  end
end
