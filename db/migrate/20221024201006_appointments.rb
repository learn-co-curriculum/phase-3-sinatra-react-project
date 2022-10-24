class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.integer :therapist_id
      t.integer :client_id
    end
  end
end
