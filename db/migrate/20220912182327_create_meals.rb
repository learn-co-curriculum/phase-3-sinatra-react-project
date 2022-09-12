class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :day_id
      t.integer :recipe_id
    end
  end
end
