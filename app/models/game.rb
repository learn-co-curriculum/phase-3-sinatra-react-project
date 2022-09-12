class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_words
  has_many :words, through: :game_words

end