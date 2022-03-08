class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :album_id
      t.string :genre
      t.string :youtube_link
      t.integer :duration
    end
  end
end
