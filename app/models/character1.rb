class Character1 < ActiveRecord::Base
    has_many :ships
    has_many :character2s, through: :ships
end