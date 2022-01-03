class Product < ActiveRecord::Base
has_many :order_items
end