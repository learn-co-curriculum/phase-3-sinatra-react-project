class User < ActiveRecord::Base
  has_many :games

  def getAllGames
    self.games
  end

end