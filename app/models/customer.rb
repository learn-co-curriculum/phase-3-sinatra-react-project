class Customer < ActiveRecord::Base
    has_many :orders

    has_many :reviews
    has_many :products, through: :reviews
end