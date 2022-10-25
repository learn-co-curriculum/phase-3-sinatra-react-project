class Tutor < ActiveRecord::Base

    has_many :appointments
    has_many :students, through: :appointments

    def new_tutor(first_name, last_name, location, subject)
        Tutor.create(first_name: first_name, last_name: last_name, location: location, subject: subject)
    end

end