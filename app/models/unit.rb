class Unit < ActiveRecord::Base


    belongs_to  :owner
    belongs_to  :maintenancerequest
    
    def self.create_new_unit (pizza)
        Unit.create(unit_id: pizza)
    end

    # def self.open_requests
    #     self.all.where(open_request?: true)
    # end





#
end