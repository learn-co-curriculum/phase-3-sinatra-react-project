class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist_name
      t.string :image
      t.string :url
      t.integer :user_id
      t.integer :review_id
      end
  end
end
