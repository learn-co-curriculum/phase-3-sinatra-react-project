class Match < ActiveRecord::Base
    belongs_to :like
    # has_many :users, through: :likes
    
end