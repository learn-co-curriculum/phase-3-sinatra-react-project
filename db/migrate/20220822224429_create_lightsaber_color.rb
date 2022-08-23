class CreateLightsaberColor < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :image_url
      t.string :attribute 
      t.string :force_users
      t.string :crystal_color
    end
  end
end
