class MakeGameRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :game_relationships do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :owned?
      t.boolean :played?
      t.boolean :liked?
      t.string :comment
      #hours played
    
      t.timestamps
    end
  end
end
