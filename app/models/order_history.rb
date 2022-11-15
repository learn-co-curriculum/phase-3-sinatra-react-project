class OrderHistory < ActiveRecord::Base
    belongs_to :product
    belongs_to :customer
    belongs_to :address_details
    belongs_to :payment_details

end