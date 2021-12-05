class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :genres
    has_many :actors
    has_many :users, through: :reviews
    
end