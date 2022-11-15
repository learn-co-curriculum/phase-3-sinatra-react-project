class CreateAvailableDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :available_dishes do |t|
      t.integer :ingredient_id
      t.integer :dish_id
    end
  end
end
