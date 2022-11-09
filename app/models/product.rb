class Product < ActiveRecord::Base
    has_many :orderDetails
end