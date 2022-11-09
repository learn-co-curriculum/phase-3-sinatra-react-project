class AddTimestampAndFkToOrderDetailsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :order_details do |t|
      t.remove :order_id, :product_id
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
