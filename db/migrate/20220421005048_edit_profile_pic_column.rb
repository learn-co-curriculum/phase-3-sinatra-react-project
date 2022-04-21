class EditProfilePicColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_pic_src, :string
  end
end
