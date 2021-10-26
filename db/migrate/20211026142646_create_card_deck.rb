class CreateCardDeck < ActiveRecord::Migration[6.1]
  def change
    create_table :card_decks do |t|
      t.integer :deck_id
      t.integer :card_id
    end
  end
end
