class GameInstance < ActiveRecord::Base
has_many :xes
has_many :os


#since Game_instance has many through TWO tables this alllows us to have that relationship 


def players 
    ([] << xes.collect {|x| x.player} << os.collect {|o| o.player}).flatten
end


 # might be needed  
def whoWon
Player.find_by_id(self.winner)
end


def whoLost
    Player.find_by_id(self.loser)
end
    


end