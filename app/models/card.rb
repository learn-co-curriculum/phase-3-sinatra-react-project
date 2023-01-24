class Card < ActiveRecord::Base
    belongs_to :cardset
    # has_many :games,through: :cardsets
    
end 