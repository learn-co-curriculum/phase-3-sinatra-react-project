class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physicians, through: :appointments
    belongs_to :waitListPatients
    




end