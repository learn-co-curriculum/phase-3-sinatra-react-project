class CreateAlbumsTable < ActiveRecord::Migration[6.1]
  def change
    create_table "albums" do |t|
      t.string :name
      t.string :date_added
      t.string :cover_image
      t.string :release_description
      t.integer :year
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
