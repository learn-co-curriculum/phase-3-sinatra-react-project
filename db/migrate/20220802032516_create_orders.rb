class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :quantity
      t.string :dog_id
      t.string :supplier_id
    end
  end
end
