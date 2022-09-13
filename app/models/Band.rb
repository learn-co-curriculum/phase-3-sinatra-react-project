class Band < ActiveRecord::Base
    has_many :concerts
    has_many :cities, through: :concerts
    has_many :eateries, through: :cities
    
end