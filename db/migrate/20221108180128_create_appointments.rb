class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :apartment_id
    end
  end
end
