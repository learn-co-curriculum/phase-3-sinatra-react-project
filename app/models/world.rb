class World < ActiveRecord::Base
    has_many :regions
    belongs_to :galaxy
end