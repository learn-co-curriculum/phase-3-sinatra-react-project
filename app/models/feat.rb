class Feat < ActiveRecord::Base
    has_many :klasses
    has_many :races
end