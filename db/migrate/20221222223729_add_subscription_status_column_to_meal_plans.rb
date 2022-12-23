class AddSubscriptionStatusColumnToMealPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :meal_plans, :subscription_status, :boolean
  end
end
