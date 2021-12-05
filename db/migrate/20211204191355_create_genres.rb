class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genre do |t|
      t.string :genre_name
    end
  end
end
