class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :make
      t.string :model
      t.string :image_url
    end      
  end
end
