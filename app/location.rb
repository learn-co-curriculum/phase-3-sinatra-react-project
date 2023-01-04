class Location < ActiveRecord::Base
    has_many :activities
    has_many :locations, through: :activities

end