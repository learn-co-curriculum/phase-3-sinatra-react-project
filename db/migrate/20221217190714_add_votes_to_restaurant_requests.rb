class AddVotesToRestaurantRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurant_requests, :upvotes, :integer
    add_column :restaurant_requests, :downvotes, :integer
  end
end
