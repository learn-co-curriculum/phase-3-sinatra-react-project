class Therapist < ActiveRecord::Base
    has_many :appointments
    has_many :clients, through: :appointments


    def full_name 
        "#{self.first_name} #{self.last_name}"
    end
end