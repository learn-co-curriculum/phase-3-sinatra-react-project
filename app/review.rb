class Review < ActiveRecord::Base
    has_many :activities
    has_many :reviews, through: :activities

end