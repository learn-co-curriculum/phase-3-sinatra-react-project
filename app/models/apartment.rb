class Apartment < ActiveRecord::Base
    belongs_to :block
    has_many :appointments
end