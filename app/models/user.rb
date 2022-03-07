class User < ActiveRecord::Base 
    has_many :likes
    has_many :profiles, through: :likes
end