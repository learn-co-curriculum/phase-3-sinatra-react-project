class Block < ActiveRecord::Base
    belongs_to :location
    has_many :apartments
    has_many :caretakers
end