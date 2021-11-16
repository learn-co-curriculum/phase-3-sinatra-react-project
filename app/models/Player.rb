class Player < ActiveRecord::Base
    has_many :xes
    has_many :os
    has_many :game_instances, through: :os
    has_many :game_instances, through: :xes
end