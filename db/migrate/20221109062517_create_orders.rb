class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.datetime :ordered_at
      t.integer :amount
    end
  end
end
