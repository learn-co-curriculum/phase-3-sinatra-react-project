class CreateAlbumsTable < ActiveRecord::Migration[6.1]
  def change
    create_table "albums" do |t|
      t.string :name
      t.string :date_added
      t.string :cover_image
      t.string :master_album_url
      t.string :release_description
      t.integer :year
      t.boolean :needs_year_update
      t.integer :artist_id
      t.string :genre_id
    end
  end
end
