class MakeGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :play_style
      t.string :description
      t.string :image_url
      t.float :rating
      t.integer :avg_play_time
      t.integer :min_play_time
      t.integer :max_players
      t.integer :min_players

    
      t.timestamps
    end
  end
end
