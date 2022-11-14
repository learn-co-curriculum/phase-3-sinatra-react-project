class User < ActiveRecord::Base 
    has_many :userstocks_joins
    has_many :stocks, through: :userstocks_joins

    has_one :watchlist 

    
end