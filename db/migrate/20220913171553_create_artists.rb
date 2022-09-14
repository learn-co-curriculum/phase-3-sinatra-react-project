class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.boolean :likes
      t.string :image_url
    end
  end
end
