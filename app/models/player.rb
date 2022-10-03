class Player < ActiveRecord::Base
    has_many :teams
    has_many :favorites
    has_many :users, through: :teams
    has_many :users, through: :favorites
    
end
