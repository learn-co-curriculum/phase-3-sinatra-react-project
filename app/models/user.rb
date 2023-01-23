class User < ActiveRecord::Base
    has_many :reviews
    has_many :bars, through: :reviews
end