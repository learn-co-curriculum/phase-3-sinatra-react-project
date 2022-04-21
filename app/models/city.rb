class City < ActiveRecord::Base
    has_many :museums
    has_many :visits, through: :museums
    has_many :trips, through: :visits
end