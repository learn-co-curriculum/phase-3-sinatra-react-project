class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :year
      t.string :name
      t.integer :avg_rating
    end
  end
end
