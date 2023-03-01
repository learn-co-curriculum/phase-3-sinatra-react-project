class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :services
    drop_table :laundry_services
    drop_table :domestic_cleanings
    drop_table :fumigations
  end
end
