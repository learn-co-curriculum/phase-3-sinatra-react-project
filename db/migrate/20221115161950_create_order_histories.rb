class CreateOrderHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :order_histories do |t|
      t.integer :address_detail_id
      t.integer :payment_detail_id
      t.integer :product_id
      t.integer :customer_id
      t.timestamp :date
    end
  end
end
