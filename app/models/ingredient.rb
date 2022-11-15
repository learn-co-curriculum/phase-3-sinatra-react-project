class Ingredient < ActiveRecord::Base
    has_many :users
    has_many :dishes
    
end