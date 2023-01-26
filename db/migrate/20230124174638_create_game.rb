class CreateGame < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :cardset_id
      t.timestamp :date
      t.integer :score
      t.difficulty :difficulty

    end
  end
end
