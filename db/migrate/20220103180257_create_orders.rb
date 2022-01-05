class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :total_quantity
      t.decimal :total_price
      t.timestamps
    end
  end
end
