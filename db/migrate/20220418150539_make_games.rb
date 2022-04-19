class MakeGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :play_style
      t.string :description
      t.string :image_url

      t.float :rating

      t.integer :min_play_time
      t.integer :max_playtime
      t.integer :min_players
      t.integer :max_players
      t.integer :min_age

      t.boolean :is_expansion

      #t.array :mechanics
      t.array :categories
      t.array :designers
      t.array :artists

      #t.float :price

    
      t.timestamps
    end
  end
end
