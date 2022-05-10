class Entry < ActiveRecord::Base
    belongs_to :color
    belongs_to :weather
end 