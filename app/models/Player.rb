class Player < ActiveRecord::Base
    has_many :xes
    has_many :os
 def game_instances 
        ([] << xes.collect {|x| x.game_instance} << os.collect {|o| o.game_instance}).flatten
 nd

def total_wins
 i=0
self.game_instances.map do |game|
    game.winner? == self ? i=i+1 : nil
end
i
end




end