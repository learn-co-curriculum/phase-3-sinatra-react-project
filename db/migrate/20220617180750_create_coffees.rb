class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :origin_country
      t.string :roaster
      t.integer :price
      t.string :image_url
      t.integer :stock
      
    end
  end
end
