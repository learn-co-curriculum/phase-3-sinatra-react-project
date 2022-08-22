class CreateLightsabers < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.integer :user_id
      t.integer :lightsaber_color_id
      t.integer :lightsaber_style_id
      t.integer :lightsaber_variation_id
    end
  end
end
