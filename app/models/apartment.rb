class Apartment < ActiveRecord::Base
    belongs_to :location
    has_many :appointments
end