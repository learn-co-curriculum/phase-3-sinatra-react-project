class CreateWaitListPatients < ActiveRecord::Migration[6.1]
  def change
    create_table :waitListPatients do |t|
      t.integer :patient_id
    end
  end
end
