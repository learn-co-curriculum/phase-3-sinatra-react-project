class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.integer :dish_id
      t.integer :user_id
      t.boolean :in_stock
    end
  end
end
