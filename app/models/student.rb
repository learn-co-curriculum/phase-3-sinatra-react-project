class Student < ActiveRecord::Base

    has_many :appointments
    has_many :tutors, through: :appointments
    
end