class CreateLightsaberStyle < ActiveRecord::Migration[6.1]
  def change
    create_table :lightsaber_styles do |t|
      t.sting :image_url
      t.string :history
      t.integer :combat_form
  end
end
