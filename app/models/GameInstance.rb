class GameInstance < ActiveRecord::Base
has_many :players
    
def winner?
Player.find_by_id(self.winner)
end

def loser?
    Player.find_by_id(self.loser)
end
    


end