class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :client_id
      t.integer :service_id
    end
  end
end
