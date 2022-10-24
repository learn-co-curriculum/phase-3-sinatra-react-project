class Appointment < ActiveRecord::Base

    belongs_to :tutor
    belongs_to :pupil

    def new_appt(tutor, pupil, date, time, location, notes)
        Appointment.create(tutor_id: tutor.id, pupil_id: pupil.id, date: date, time: time, location: location, notes: notes)
    end


end