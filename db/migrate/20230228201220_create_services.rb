class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.integer :worker_id
      t.integer :client_id 
      t.integer :laundry_service_id 
      t.integer :domestic_cleaning_id 
      t.integer :fumigation_id 
      t.timestamps
    end 
  end
end
