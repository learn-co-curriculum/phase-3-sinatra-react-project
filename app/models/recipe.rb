class Recipe < ActiveRecord::Base
    has_many :recipe_ingredients
    belongs_to :user_recipe
    has_many :users, through: :user_recipe
    belongs_to :cuisine


    def self.add_recipe(name, cuisine, times_cooked = 0, instructions, user)
        check_cuisine = Cuisine.find_by(name: cuisine.downcase) ? Cuisine.find_by(name: cuisine.downcase) : Cuisine.create(name: cuisine.titleize) 
        check_recipe = Recipe.find_by(name: name.downcase) 

        if Recipe.exists?(name: name.downcase) == true and UserRecipe.exists?(recipe_id: check_recipe) == true
            "Recipe already on your list"
        elsif Recipe.exists?(name: name.downcase) == true and UserRecipe.exists?(recipe_id: check_recipe) == false
            UserRecipe.create(user_id: user.id, recipe_id: check_recipe.id)
        else 
            new_recipe = Recipe.create(name: name.titleize, cuisine_id: check_cuisine.id, times_cooked: times_cooked, instructions: instructions)
            UserRecipe.create(user_id: user.id, recipe_id: new_recipe.id)
        end
    end


end