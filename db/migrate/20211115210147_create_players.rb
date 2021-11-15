class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :player_wins
      t.integer :player_losses
      t.string :player_avatar
      t.integer  :game_instance_id
      t.timestamps
    end
    
  end
end
