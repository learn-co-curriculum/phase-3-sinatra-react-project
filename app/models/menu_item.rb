class MenuItem < ActiveRecord::Base
    belongs_to :restaurant
    has_many :ordered_items
    belongs_to :item
    

end 