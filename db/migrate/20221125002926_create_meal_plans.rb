class CreateMealPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_plans do |t|
      t.string :name
      t.integer :number_of_meals
      t.integer :restaurant_id
    end
  end
end
