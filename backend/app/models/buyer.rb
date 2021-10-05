class Buyer <ActiveRecord::Base 
    has_many :pieces
    has_many :sellers, through: :pieces
end