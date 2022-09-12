class CreateQuantities < ActiveRecord::Migration[6.1]
  def change
    create_table :quantities do |t|
      t.integer :amount
      t.integer :recipe_id
      t.integer :ingredient_id
    end
  end
end
