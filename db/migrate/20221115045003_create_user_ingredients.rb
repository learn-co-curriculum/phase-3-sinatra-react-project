class CreateUserIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ingredients do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.integer :quantity
      t.boolean :in_stock
    end
  end
end
