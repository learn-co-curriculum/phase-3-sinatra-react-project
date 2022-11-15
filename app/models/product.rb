class Product < ActiveRecord::Base
    has_many :cart_items

    has_many :order_histories
    has_many :customers, through: :order_histories
    

    has_many :inventories
    has_many :images

end