class CreateGameWords < ActiveRecord::Migration[6.1]
  def change
    create_table :game_words do |t|
      t.integer :word_id 
      t.integer :game_id
      t.boolean :correct? 
    end
  end
end
