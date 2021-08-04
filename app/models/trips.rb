class Trip < ActiveRecord::Base
    belongs_to :traveler
    has_many :days, dependent: :destroy
end