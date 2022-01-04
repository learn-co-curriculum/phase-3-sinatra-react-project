class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :main
      t.string :poster
      t.string :trailer
      t.integer :phase
      t.string :descriptions
    end
  end
end
