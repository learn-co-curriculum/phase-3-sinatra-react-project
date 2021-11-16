class DeleteShelteridFromApplications < ActiveRecord::Migration[6.1]
  def change
    remove_column :adoption_applications, :shelter_id
  end
end
