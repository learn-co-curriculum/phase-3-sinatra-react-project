class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :summary
      t.string :food_type
      t.string :price_rating
    end
  end
end
