class Location < ActiveRecord::Base
    has_many :reviews
    has_many :characters, through: :reviews
end