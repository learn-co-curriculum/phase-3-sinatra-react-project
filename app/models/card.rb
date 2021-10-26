class Card < ActiveRecord::Base
    has_many :card_decks
    belongs_to :hero
    has_many :decks, through: :card_decks
end