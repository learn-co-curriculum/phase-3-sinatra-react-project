class Student < ActiveRecord::Base

    has_many :appointments
    has_many :tutors, through: :appointments

    def new_student(first_name, last_name, location, subject)
        Student.create(first_name: first_name, last_name: last_name, location: location, subject: subject)
    end
    
end