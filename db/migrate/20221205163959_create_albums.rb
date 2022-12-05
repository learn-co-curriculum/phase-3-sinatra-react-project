class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :image
      t.integer :rating
      t.integer :catalog_number
    end
  end
end
