class Game < ActiveRecord::Base
    belongs_to :cardset
    belongs_to :user
    
end 