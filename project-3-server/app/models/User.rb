class User < ActiveRecord::Base
    has_many :reviews
    has_many :destinations, through: :reviews
end