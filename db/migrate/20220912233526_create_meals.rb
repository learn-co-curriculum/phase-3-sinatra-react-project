class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.integer :day_id
      t.integer :meal_number 
    end
  end
end
