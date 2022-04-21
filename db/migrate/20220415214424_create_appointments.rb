class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      # t.datetime :appointment_time
      t.integer :appointment_duration
      t.string :appointment_reason
      t.string :appointment_type
      t.string :appointment_doctor
      t.string :appointment_patient
      t.integer :doctor_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
