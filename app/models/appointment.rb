class Appointment < ActiveRecord::Base

    belongs_to :tutor
    belongs_to :student

end