class CreateMealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_items do |t|
      t.integer :meal_id
      t.integer :item_id
    end
  end
end
