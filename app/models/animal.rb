class Animal < ActiveRecord::Base
    has_many :sightings
    has_many :habitats, through: :sightings
end