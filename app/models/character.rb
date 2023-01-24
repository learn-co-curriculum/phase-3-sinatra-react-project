class Character < ActiveRecord::Base
    has_many :reviews
    has_many :locations, through: :reviews
end