class Album < ActiveRecord::Base
    belongs_to :band
    belongs_to :review
end