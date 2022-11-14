class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :description 
      t.string :cuisine 
      t.string :website
      t.string :menu
      t.string :price_range
    end
  end
end