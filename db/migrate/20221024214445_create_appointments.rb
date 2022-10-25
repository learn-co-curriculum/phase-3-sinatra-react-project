class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.string :notes
      t.string :location
      t.integer :tutor_id
      t.integer :student_id
    end
  end
end