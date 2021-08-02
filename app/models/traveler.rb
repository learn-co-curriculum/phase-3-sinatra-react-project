class Traveler < ActiveRecord::Base
    has_many :activities, dependent: :destroy
    has_many :destinations, through: :activities

end