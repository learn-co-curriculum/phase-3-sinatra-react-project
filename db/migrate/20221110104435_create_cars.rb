class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :category
      t.string :model 
      t.string :fuel_type
      t.integer :price
      t.integer :seats
      t.string :front_url
      t.string :inside_url
      t.string :back_url
      t.string :side_url
      t.integer :quantity
      t.integer :year
      t.string :transmission
      t.timestamps
    end
  end
end
