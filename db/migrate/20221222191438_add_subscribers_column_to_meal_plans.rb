class AddSubscribersColumnToMealPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :meal_plans, :subscribers, :integer
  end
end
