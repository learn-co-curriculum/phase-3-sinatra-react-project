class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.boolean :completed?
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
