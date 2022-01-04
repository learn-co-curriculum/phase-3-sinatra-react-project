class Order < ActiveRecord::Base
    has_many :order_items
    before_save :set_subtotal
    # has_many :products, through: :order_items


    def subtotal
        order_items.collect{|order_item| 
        order_item.valid ? 
        order_item.unit_price*order_item.quantity : 0}.sum
    end

    def set_subtotal
        self[:subtotal] = subtotal
    end



end