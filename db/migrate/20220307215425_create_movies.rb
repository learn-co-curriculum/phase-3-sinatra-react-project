class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :release_year
      t.string :rating
      t.string :poster_image_url
      t.integer :run_time
      t.integer :audience_score
      t.string :score_sentiment
      t.integer :critics_score
    end
  end
end
