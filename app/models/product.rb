class Product < ActiveRecord::Base
    has_many :orderDetails
    
    has_many :reviews
    has_many :customers, through: :reviews
end