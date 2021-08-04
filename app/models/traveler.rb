class Traveler < ActiveRecord::Base
    has_many :trips, dependent: :destroy
end