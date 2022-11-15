class Category < ActiveRecord::Base
    has_many :subcategories
end