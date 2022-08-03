class AddColumnsToOrderTable < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :pickup_date, :string
    add_column :orders, :price, :float
  end
end
