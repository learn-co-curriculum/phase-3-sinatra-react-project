class Watchlist < ActiveRecord::Base
    belongs_to :user
    has_many :watchstocks_joins
    has_many :stocks, through: :watchstocks_joins
end