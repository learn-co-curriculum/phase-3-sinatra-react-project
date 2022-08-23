class CreateLightsaberColor < ActiveRecord::Migration[6.1]
  def change
    create_table :lightsaber_colors do |t|
      t.string :image_url
      t.string :attribute 
      t.string :force_users
      t.string :crystal_color
    end
  end
end
