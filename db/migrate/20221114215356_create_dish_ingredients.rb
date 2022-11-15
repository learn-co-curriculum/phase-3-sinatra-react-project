class CreateDishIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_ingredients do |t|
      t.integer :ingredient_id
      t.integer :dish_id
    end
  end
end
