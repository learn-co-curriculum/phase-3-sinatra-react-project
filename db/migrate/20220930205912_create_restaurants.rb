class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.integer :rating
      t.integer :delivery_id
    end
  end
end
