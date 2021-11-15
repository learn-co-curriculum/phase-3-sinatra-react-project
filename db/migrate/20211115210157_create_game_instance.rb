class CreateGameInstance < ActiveRecord::Migration[6.1]
  def change
    create_table :game_instances do |t|
      t.integer :winner
      t.integer :loser
      t.timestamps
    end
    
  end
end
