class AddColumnCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :review, :string
  end
end
