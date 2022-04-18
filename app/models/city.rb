class City < ActiveRecord::Base
    has_many :museums
    has_many :trips, through: :museums
end