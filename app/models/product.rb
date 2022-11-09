class Product < ActiveRecord::Base
    has_many :orderDetails
    has_many :cusotmer, through :reviews
end