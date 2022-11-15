class PaymentDetail < ActiveRecord::Base
    belongs_to :customer
    has_many :order_histories

end