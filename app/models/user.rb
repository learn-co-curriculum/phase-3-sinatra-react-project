class User < ActiveRecord::Base
    has_many :reviews
    has_many :watch_lists
    has_many :movies, through: :reviews
    has_many :shows, through: :reviews
    has_many :movies, through: :watch_lists
    has_many :shows, through: :watch_lists
    


    
end