class Customer < ActiveRecord::Base
    has_many :orders
end