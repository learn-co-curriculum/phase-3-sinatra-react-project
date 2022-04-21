class Trip < ActiveRecord::Base
    has_many :visits
    has_many :museums, through: :visits
end