class Order < ActiveRecord::Base
    belongs_to :Dog
    belongs_to :supplier

    def update_quantity(num)
        self.quantity = num
    end

    def delete_by_id(id)
        
    end
end