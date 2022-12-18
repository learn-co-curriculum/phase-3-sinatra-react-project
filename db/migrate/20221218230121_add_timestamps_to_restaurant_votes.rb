class AddTimestampsToRestaurantVotes < ActiveRecord::Migration[6.1]
  def change
    add_timestamps :restaurant_votes, null: true
  end
end
