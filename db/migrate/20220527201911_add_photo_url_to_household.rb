class AddPhotoUrlToHousehold < ActiveRecord::Migration[6.1]
  def change
    add_column :households, :family_photo_url, :string
  end
end
