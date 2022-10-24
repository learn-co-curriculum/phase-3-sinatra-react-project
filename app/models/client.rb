class Client < ActiveRecord::Base
    belongs_to :therapist
    has_many :appointments

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