class CreatePlayerVideoGames < ActiveRecord::Migration[6.1]
  def change
    create_table :player_video_games do |t|
      t.integer :player_id
      t.integer :video_game_id
    end
  end
end
