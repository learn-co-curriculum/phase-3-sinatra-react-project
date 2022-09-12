class GameWord < ActiveRecord::Base
  belongs_to :game
  belongs_to :word

end