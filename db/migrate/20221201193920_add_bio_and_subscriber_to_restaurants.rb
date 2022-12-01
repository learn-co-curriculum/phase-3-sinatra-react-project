class AddBioAndSubscriberToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :bio, :string
    add_column :restaurants, :subscribers, :integer
  end
end
