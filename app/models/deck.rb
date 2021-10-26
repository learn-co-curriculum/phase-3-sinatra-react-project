class Deck < ActiveRecord::Base
    has_many :card_decks
    belongs_to :user
    has_many :cards, through: :card_decks
end