class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :img_url
      t.integer :release_year
      t.string :genre
      t.string :desc
      t.integer :total_season
      t.integer :total_episode
      t.integer :runtime
      t.integer :rating
    end
  end
end
