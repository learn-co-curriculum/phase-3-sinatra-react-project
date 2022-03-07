class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :album do |t|
      t.string :title
      t.string :release_date
      t.integer :downloads
      t.integer :duration
    end
  end
end
