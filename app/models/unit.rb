class Unit < ActiveRecord::Base

    # has_many  :owners
    # has_many  :maintenancerequests
    belongs_to  :owners
    belongs_to  :maintenancerequests
    
    def self.create_new_unit (pizza)
        Unit.create(unit_id: pizza)
    end

    def self.open_requests
        self.all.where(open_request?: true)
    end





#
end