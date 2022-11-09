class UpdateDocTableWithAppointmentId < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :appointment_id, :integer
  end
end
