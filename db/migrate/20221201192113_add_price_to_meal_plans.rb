class AddPriceToMealPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :meal_plans, :price, :integer
  end
end
