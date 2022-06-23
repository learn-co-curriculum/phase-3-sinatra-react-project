class CreateCheeses < ActiveRecord::Migration[6.1]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :category
      t.integer :age
      t.string :location
      t.string :image_url
      t.string :bio
    end
  end
end
