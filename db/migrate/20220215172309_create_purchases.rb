class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.float :supplier_price
      t.integer :product_id
      t.integer :supplier_id
      t.timestamps
    end
  end
end
