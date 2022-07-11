class Order < ActiveRecord::Base
    belongs_to :restaurant
    has_many :ordered_items
    

end 