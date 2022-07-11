class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|
      t.integer :order_id
      t.integer :menu_item_id
      t.integer :quantity
    end
  end
end
