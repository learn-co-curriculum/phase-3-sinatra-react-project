class product < ActiveRecord::Base
has_many :order_items
has_many orders, through: :order_items
end