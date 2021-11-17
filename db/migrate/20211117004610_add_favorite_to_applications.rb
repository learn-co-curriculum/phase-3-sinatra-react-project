class AddFavoriteToApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :favorite, :boolean
  end
end
