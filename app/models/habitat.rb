class Habitat < ActiveRecord::Base
    has_many :sightings
    has_many :animals, through: :sightings
end