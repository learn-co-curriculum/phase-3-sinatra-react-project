class AddTimestampToOrdersTable < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.remove :customer_id
      t.references :customer, foreign_key: true
      t.string :shipping_address
      t.string :order_status
      t.timestamps
    end
  end
end
