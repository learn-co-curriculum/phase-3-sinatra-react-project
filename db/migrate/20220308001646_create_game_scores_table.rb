class CreateGameScoresTable < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :user_id #foreign
      t.integer :word_id
      t.integer :session_score
      t.integer :guesses
      t.boolean :completed
      t.timestamps #date game was played #date game was completed #time the game took
    end
  end
end
