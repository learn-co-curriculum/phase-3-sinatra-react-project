class AddColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :company_name, :string
     add_column :contacts, :photo, :string
  end
end
