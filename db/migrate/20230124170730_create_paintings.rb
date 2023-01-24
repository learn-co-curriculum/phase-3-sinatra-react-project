class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
      create_table :paintings do |t|
        t.string :title
        t.string :medium
        t.integer :year
        t.string  :img_link
        t.integer :artist_id #foreign key
        t.boolean :famous

        t.timestamps
      end
  end
end
