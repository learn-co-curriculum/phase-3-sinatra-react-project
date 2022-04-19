class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
end
