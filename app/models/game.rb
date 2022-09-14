class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_words
  has_many :words, through: :game_words

  def self.orderedScores
    self.all.order(:score).reverse_order.limit(10)
  end

  def self.getUsersNames
    self.orderedScores.map{|game| game.user}
  end

  def gameWords
    self.words.map{|word| word.word}
  end

  def wordBooleans
    self.game_words.pluck(:correct?)
  end

end