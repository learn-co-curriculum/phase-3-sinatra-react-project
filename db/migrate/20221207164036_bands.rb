class Bands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :artist_name
      t.string :genre
    end
  end
end
