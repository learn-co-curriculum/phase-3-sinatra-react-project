class Product < ActiveRecord::Base
    has_many :users
    has_many :carts, through: :users
end

