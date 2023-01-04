class CreateMaintenanceRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenance_requests do |t|
      t.string  :urgency
      t.string  :description
      t.float   :expected_cost
      t.float   :actual_cost
      t.string  :date_opened
      t.string  :date_closed
      
      t.timestamps
    end
  end
end
