class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :image_url
      t.string :catalog_number
    end
  end
end
