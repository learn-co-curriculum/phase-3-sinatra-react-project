class Review < ActiveRecord::Base
    belongs_to :character
    belongs_to :location
end