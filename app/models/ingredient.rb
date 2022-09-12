class Ingredient < ActiveRecord::Base 
    has_many :quantities
    has_many :recipies, through: :quantities
end