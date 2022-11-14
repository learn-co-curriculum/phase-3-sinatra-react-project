class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.integer :ingredient_id
      t.boolean :favorite

    end
  end
end
