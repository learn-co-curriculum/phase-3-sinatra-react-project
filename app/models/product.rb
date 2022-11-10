class Product < ActiveRecord::Base
    has_many :orderDetails
    
    has_many :reviews, dependent: :delete_all
    has_many :customers, through: :reviews
end