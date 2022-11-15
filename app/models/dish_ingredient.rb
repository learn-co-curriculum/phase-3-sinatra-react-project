class DishIngredient < ActiveRecord::Base 
    belongs_to :ingredient
    has_many :dishes
end