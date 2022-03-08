class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :game_genre
      t.string :preferred_skills
      t.integer :team_size
    end
  end
end
