class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name 
      t.string :image_url
      t.integer :film_id
      t.integer :user_id
    end
  end
end
