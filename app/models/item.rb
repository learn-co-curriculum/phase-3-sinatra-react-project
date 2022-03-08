class Item < ActiveRecord::Base
    has_many :grocery_lists, dependent: :destroy
    has_many :categories, through: :grocery_lists
   
end