class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :food_name
      t.integer :likes
      t.belongs_to :restaurant
    end
  end
end
