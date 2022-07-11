class Sighting < ActiveRecord::Base
    belongs_to :habitat
    belongs_to :animal
end