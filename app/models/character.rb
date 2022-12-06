class Character < ActiveRecord::Base

    has_many :events
    has_many :arenas, through: :events

end