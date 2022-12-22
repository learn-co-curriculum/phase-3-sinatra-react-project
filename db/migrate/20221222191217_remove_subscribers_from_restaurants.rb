class RemoveSubscribersFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :subscribers, :integer
  end
end
