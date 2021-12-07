class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :img_url
      t.integer :release_year
      t.string :genre
      t.string :desc
      t.integer :runtime
      t.integer :rating
    end
  end
end
