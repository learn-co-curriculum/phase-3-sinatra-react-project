class Stock < ActiveRecord::Base 
    has_many :userstocks_joins
    has_many :users, through: :userstocks_joins

    has_many :stock_prices
    has_many :watchstocks_joins
    has_many :watchlists, through: :watchstocks_joins
end