class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table "characters" do |t|
      t.string "name"
      t.string "gender"
      t.string "description"
      t.string "imageURL"
      t.string "anime_name"
      t.string "anime_imageURL"
    end
  end
end
