class Museum < ActiveRecord::Base
    belongs_to :city
    belongs_to :trip
end