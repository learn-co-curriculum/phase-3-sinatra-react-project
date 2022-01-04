class User < ActiveRecord::Base
    has_many :comments
    has_many :movies, through: :comments
end