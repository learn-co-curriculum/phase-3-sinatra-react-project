class GameRelationship < ActiveRecord::Base
    belongs_to :game
    belongs_to :user

    # def user_info 
    #     self.user
    # end
end