class Visit < ActiveRecord::Base
    belongs_to :trip
    belongs_to :museum
    has_one :city, through: :museum
end