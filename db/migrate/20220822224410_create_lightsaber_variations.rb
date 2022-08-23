class CreateLightsaberVariations < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :image_url
      t.string :hilt
      t.string :blade 
    end
  end
end
