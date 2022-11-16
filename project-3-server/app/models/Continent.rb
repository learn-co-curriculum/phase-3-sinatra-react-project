class Continent < ActiveRecord::Base
    has_many :destinations
end