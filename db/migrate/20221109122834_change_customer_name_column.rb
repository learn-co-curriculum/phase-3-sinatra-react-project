class ChangeCustomerNameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :Fullname, :full_name
    rename_column :customers, :Location, :address
  end
end
