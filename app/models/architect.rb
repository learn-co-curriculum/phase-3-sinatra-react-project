class Architect < ActiveRecord::Base
    has_many :buildings
    has_many :cities, through: :buildings
end