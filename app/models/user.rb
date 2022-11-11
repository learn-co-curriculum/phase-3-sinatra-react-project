class User < ActiveRecord::Base
    has_many :songs
    has_many :reviews, through: :songs
end