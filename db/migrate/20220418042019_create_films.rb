class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :name 
      t.string :image_url
      t.integer :character_id
    end
  end
end
