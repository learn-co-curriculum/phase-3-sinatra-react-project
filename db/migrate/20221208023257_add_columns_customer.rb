class AddColumnsCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :phone, :string
    add_column :customers, :email, :string
    add_column :customers, :address, :string
  end
end
