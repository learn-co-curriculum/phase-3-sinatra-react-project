class MovieSelections < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_selections do |t|
      t.belongs_to :profile
      t.belongs_to :movie
    end
  end
end
