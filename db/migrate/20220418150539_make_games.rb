class MakeGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :image_url

      t.float :rating

      t.integer :min_play_time
      t.integer :max_play_time
      t.integer :min_players
      t.integer :max_players
      t.integer :min_age

      t.boolean :is_expansion

      t.string :mechanics
      t.string :categories
      # t.array :designers
      # t.array :artists
      #has expansions
      #if is expansion, know origin

      t.timestamps
    end
  end
end
