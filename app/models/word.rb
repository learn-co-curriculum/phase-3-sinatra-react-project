class Word < ActiveRecord::Base
    has_many :games
    has_many :guesses
    has_many :players, through: :games 
end
