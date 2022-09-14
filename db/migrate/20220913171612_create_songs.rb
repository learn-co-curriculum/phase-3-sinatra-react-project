class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.integer :genre_id
      t.string :song_title
      t.string :release_date
    end
  end
end
