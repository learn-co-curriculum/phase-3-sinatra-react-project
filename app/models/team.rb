class Team < ActiveRecord::Base
    belongs_to :user
    belongs_to :player
    

   def player_name
        self.player
   end

   def player_status
        self.starter
   end
end
