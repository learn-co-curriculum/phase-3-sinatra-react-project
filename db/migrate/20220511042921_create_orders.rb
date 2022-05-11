class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.integer :customer_id
      t.integer :menu_item_id
    end
  end
end
