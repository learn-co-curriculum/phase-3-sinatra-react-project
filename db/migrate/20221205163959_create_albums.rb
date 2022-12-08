class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :image_url
      t.string :catalog_number
      t.integer :band_id
    end
  end
end
