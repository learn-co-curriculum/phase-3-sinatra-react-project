class Client < ActiveRecord::Base
    has_many :appointments
    has_many :therapists, through: :appointments

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end

    def therapists
        Appointment.all.each do |appointment|
            if appointment.client == self
                return appointment.therapist
            end
        end
    end
end