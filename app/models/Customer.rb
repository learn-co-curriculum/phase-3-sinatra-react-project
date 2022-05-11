class Customer < ActiveRecord::Base
    has_many :orders
    has_many :reviews
    has_many :restaurants, through: :reviews
end