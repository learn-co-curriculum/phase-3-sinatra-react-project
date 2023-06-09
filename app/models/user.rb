class User < ActiveRecord::Base

    has_many :reviews
    has_many :houses, through: :reviews

end 