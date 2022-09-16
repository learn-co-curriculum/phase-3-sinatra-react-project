class CreateVideoGames < ActiveRecord::Migration[6.1]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :company_game_was_made_by
      t.integer :rating
      t.string :image
    end
  end
end
