class Player < ActiveRecord::Base
    has_many :rounds
    has_many :score_totals
end