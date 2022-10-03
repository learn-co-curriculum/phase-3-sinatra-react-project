class User < ActiveRecord::Base
    has_many :reviews
    has_many :places, through: :reviews
end