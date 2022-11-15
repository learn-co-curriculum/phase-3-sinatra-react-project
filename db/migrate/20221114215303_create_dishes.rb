class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.integer :ingredient_id
      t.integer :user_id
      t.boolean :in_stock
      t.string :comments
      t.integer :times_cooked
      t.string :instructions
    end
  end
end
