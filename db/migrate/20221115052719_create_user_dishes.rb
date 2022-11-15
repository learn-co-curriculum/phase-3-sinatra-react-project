class CreateUserDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_dishes do |t|
      t.integer :user_id
      t.integer :dish_id
    end
  end
end
