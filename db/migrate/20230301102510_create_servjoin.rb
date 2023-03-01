class CreateServjoin < ActiveRecord::Migration[6.1]
  def change
    create_table :work_services do |t|
      t.integer :worker_id 
      t.integer :service_id 
      t.integer :client_id 
      t.timestamps
    end 
  end
end
