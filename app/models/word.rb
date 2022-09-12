class Word < ActiveRecord::Base
  has_many :game_words
  has_many :games, through: :game_words

end