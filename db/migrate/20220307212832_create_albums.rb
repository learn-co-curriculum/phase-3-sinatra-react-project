class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :release_date
      t.integer :downloads
      t.integer :duration
      t.integer :artist_id
    end
  end
end
