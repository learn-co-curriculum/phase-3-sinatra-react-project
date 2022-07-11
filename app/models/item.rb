class Item < ActiveRecord::Base
  has_many :menu_items
  belongs_to :item_category
end
