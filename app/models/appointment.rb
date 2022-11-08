class Appointment < ActiveRecord::Base
    belongs_to :apartment
    belongs_to :client
end