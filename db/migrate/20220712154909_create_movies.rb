class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.timestamps 
      t.boolean :watched
      t.integer :genre_id
      t.string :imageUrl
    end
  end
end
