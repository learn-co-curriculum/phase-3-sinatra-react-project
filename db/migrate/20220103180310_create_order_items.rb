class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.float :total
      t.float :unit_price
      t.timestamps
    end
  end
end
