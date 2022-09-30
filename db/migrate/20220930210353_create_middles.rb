class CreateMiddles < ActiveRecord::Migration[6.1]
  def change
    create_table :middles do |t|
      t.integer :dish_id
      t.integer :restaurant_id
    end
  end
end
