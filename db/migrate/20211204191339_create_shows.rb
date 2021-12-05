class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.integer :release_year
      t.string :description
    end
  end
end
