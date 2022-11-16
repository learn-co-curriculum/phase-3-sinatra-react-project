class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
    end
  end
end
