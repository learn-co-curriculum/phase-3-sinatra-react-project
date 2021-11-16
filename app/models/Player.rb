class Player < ActiveRecord::Base
    has_many :xes
    has_many :os
 def game_instances 
        ([] << xes.collect {|x| x.game_instance} << os.collect {|o| o.game_instance}).flatten
 end

def total_wins
 i=0
self.game_instances.each do |game|
    game.whoWon == self ? i=i+1 : nil
end
i
end

def add_wins
i =  1+ self.total_wins
self.update(player_wins: i)
end


def total_loses
i=0
   self.game_instances.each do |game|
       game.whoLost == self ? i=i+1 : nil
   end
i
end
   
def add_loses
   i =  1+ self.total_loses
   self.update(player_losses: i)
end
   






end