class CreateAppointmentTable < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :doctors_id
      t.integer :patients_id

    end
  end
end
