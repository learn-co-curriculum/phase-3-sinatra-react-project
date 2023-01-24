class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :description
      t.string :actor
      t.integer :movie_length
      t.integer :rating
      t.string :esrb_rating
    end
  end
end
