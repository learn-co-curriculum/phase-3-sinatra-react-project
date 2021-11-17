class AddColumnToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :profile_img, :string
  end
end
