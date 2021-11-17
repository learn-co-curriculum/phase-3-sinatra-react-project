class Player < ActiveRecord::Base
    has_many :xes
    has_many :os



    #####Needed as can't do two things with has_many through //////// It works not sure how 
    ##### BUT relationships seem to work for everything I've tested so far
    #####
 def game_instances 
        ([] << xes.collect {|x| x.game_instance} << os.collect {|o| o.game_instance}).flatten
 end

#########Calculates total wins for a player instance,.
######### uses the whoWon method, and a map fuinction 
########## if who won is true it increments i by 1 
########### if who won is false it does nothinf 

def total_wins
 i=0
self.game_instances.each do |game|
    game.whoWon == self ? i=i+1 : nil
end
i
end

####This method should only be run when we complete a game instance -- 
#### this method adds 1  to the total_wins column 
##### As such if we run it when not needed it can mess stuff up 
### Addwins/loses is not used ATM
def add_wins
i =  1+ self.total_wins
self.update(player_wins: i)
end



### The total_losses methods work the same as total wins 
### same for add loses 




def total_loses
i=0
   self.game_instances.each do |game|
       game.whoLost == self ? i=i+1 : nil
   end
i
end
 ## Addwins/loses is not used ATM  
def add_loses
   i =  1+ self.total_loses
   self.update(player_losses: i)
end
   






end