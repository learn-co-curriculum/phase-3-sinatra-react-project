class AddCreatorToRestaurantRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_requests, :creator, :string
  end
end
