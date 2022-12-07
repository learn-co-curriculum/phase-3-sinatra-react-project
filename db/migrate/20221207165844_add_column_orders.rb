class AddColumnOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :size, :string
  end
end
