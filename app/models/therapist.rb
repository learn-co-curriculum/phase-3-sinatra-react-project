class Therapist < ActiveRecord::Base
    has_many :clients

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end
end