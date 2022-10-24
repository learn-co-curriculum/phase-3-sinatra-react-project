class Client < ActiveRecord::Base
    belongs_to :therapist

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end
end