class CreateXs < ActiveRecord::Migration[6.1]
  def change
    create_table :xes do |t|
      t.integer :game_instance_id
      t.integer :player_id
      t.timestamps
    end
    
  end
end
