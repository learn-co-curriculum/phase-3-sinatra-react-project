class Customer < ActiveRecord::Base
    has_many :orders
    has many :products, through: :reviews
end