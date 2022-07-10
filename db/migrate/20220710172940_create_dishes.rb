class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :food
      t.integer :day_id
      t.integer :meal_id

    end
  end
end
