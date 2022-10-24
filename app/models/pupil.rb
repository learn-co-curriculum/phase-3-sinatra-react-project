class Pupil < ActiveRecord::Base

    has_many :appointments
    has_many :tutors, through: :appointments

    def new_pupil(first_name, last_name, location, subject)
        Pupil.create(first_name: first_name, last_name: last_name, location: location, subject: subject)
    end
    
end