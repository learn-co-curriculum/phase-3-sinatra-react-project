class Customer < ActiveRecord::Base
    has_many :cart_items

    has_many :order_histories
    has_many :products, through: :order_histories

    
    has_many :address_details
    has_many :payment_details

end