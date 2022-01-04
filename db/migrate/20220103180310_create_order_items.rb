class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :unit_price
      # t.decimal :total
      t.references :order
      t.references :product
      t.timestamps
    end
  end
end

