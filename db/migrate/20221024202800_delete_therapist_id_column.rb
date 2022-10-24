class DeleteTherapistIdColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :therapist_id
  end
end
