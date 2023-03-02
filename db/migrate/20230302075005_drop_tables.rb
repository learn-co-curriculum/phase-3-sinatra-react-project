class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :work_services
    drop_table :clients
  end
end
