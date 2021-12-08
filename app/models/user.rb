class User < ActiveRecord::Base
    has_many :reviews
    has_many :movies, through: :reviews
    has_many :shows, through: :reviews

    


    
end