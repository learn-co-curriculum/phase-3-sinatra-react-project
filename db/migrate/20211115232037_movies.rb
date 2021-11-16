class Movies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.string :thumbnail
      t.string :movie_link
      t.integer :rating
    end
  end
end
