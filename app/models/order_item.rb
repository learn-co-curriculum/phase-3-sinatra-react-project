class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product

    def self.subtotal
        self.all.collect{|item|item.unit_price.to_f*item.quantity}.sum
    end




    
end