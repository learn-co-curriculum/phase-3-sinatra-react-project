class GameInstance < ActiveRecord::Base
has_many :playeros
has_many :playerxes
has_many :players, through: :os
has_many :players, through: :xes
    
def winner?
Player.find_by_id(self.winner)
end

def loser?
    Player.find_by_id(self.loser)
end
    


end