class AddColumnToWorkers < ActiveRecord::Migration[6.1]
  def change
    add_column :workers, :service_id, :integer
  end
end
