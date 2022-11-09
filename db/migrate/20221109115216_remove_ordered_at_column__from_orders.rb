class RemoveOrderedAtColumnFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :ordered_at, :datetime
  end
end
