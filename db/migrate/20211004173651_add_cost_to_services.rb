class AddCostToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :price, :integer
  end
end
