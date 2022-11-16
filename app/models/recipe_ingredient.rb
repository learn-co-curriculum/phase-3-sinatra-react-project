class RecipeIngredient < ActiveRecord::Base 
    belongs_to :ingredient
    has_many :recipes
end