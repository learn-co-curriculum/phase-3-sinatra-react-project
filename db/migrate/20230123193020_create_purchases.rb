class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :Purchases do |t|
      t.integer :product_id
      t.integer :discount
      t.integer :total
      t.integer :quantity

      t.timestamps
    end
  end
end
