class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date 
      t.integer :appointment_duration 
      t.string :appointment_reason 
      t.integer :doctor_id 
      t.integer :patient_id
      t.timestamps
    end
  end
end
