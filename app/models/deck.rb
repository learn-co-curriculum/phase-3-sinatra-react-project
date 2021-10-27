class Deck < ActiveRecord::Base
    has_many :card_decks
    belongs_to :user
    has_many :cards, through: :card_decks

    # works in pry console, but doesn't appear to be working in controller.  I'll try another method
    def delete_card(card_id)
        self.card_decks.find {|value| value.card_id == card_id}
    end
end