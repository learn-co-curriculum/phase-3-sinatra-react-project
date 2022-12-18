class CreateRestaurantVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_votes do |t|
      t.integer :vote
      t.integer :restaurant_request_id
    end
  end
end
