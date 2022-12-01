class AddImageToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :image_url, :string
  end
end
