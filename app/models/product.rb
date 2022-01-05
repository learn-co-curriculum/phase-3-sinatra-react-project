class Product < ActiveRecord::Base
has_many :order_items
has_many :orders, through: :order_items
has_many :reviews



    def price
        self.unit_price.to_f
    end

    def add_to_cart
    # self.inventory -= 1
    # save
    OrderItem.create(quantity: 1, unit_price: self.price, product_id: self.id )
    end



end