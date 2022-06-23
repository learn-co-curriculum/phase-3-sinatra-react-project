class Game < ActiveRecord::Base
   belongs_to :player
   belongs_to :word
   has_many :guesses
end
