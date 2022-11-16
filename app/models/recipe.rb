class Recipe < ActiveRecord::Base
    has_many :recipe_ingredients
    belongs_to :user_recipe
    has_many :users, through: :user_recipe
    belongs_to :cuisine


end