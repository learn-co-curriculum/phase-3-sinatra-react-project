class AddRestaurantImages < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :img, :string
  end
end
