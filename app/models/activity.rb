class Activity < ActiveRecord::Base
    belongs_to :destination
    belongs_to :traveler
end