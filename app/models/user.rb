
class User < ActiveRecord::Base
    has_many :cardsets
    has_many :games
    has_many :cards, through: :cardsets
def self 
end
end