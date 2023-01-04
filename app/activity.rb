class Activity < ActiveRecord::Base
    belongs_to :review
    belongs_to :location
    

end