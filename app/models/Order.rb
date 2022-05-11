class Order < ActiveRecord::Base
    belongs_to :customer
    belongs_to :menu_item
end