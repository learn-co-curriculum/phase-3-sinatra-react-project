class DropSupplierTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :suppliers
  end
end
