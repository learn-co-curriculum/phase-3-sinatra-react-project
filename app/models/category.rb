class Category < ActiveRecord::Base
    has_many :grocery_lists, dependent: :destroy
    has_many :items, through: :grocery_lists

end