class AddLogoUrlToApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :logo_url, :string
  end
end
