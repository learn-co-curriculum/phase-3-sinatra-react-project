class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product

    def self.subtotal
        cost = self.all.collect{|item|item.unit_price.to_f*item.quantity}.sum
    end

    def self.count
        price = self.all.count
    end

    def self.create_order
        cost = self.all.collect{|item|item.unit_price.to_f*item.quantity}.sum
        quantity = self.all.count
        Order.create(total_quantity: quantity, total_price: cost.to_f)
        OrderItem.update(order_id: Order.ids)
        self.destroy_all
    end


    
end