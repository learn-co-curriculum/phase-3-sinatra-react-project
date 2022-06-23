class CreateGuesses < ActiveRecord::Migration[6.1]
  def change
    create_table :guesses do |t|
      t.string :input
      t.string :hint
      t.belongs_to :word
      t.belongs_to :game
    end
  end
end
