class Skill < ActiveRecord::Base
    has_many :characters
    has_many :klasses
    has_many :races
end