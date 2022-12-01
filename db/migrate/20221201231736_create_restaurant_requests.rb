class CreateRestaurantRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_requests do |t|
      t.string :name
      t.string :location
    end
  end
end
