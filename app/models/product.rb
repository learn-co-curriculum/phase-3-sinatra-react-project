class Product < ActiveRecord::Base
    has_many :orderDetails
    has_many :cusotmers, through :reviews
end