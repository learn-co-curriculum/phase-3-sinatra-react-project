class Appointment < ActiveRecord::Base

    belongs_to :tutor
    belongs_to :student

    def new_appt(tutor, student, date, time, location, notes)
        Appointment.create(tutor_id: tutor.id, student_id: student.id, date: date, time: time, location: location, notes: notes)
    end


end