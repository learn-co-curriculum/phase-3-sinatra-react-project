class User < ActiveRecord::Base
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients
    has_many :user_recipes
    has_many :recipes, through: :user_recipes



    ###---------- User ingredient methods ----------###
    def my_ingredients
        self.user_ingredients.map do |ingredient|
            Ingredient.find(ingredient.ingredient_id)
        end
    end

    def least_amount_of_ingredients
        Ingredient.find(self.user_ingredients.order(:quantity).first.ingredient_id)
    end

    def most_amount_of_ingredients
        Ingredient.find(self.user_ingredients.order('quantity DESC').first.ingredient_id)
    end


    ###---------- User dish methods ----------###
    def my_recipes
        self.user_recipes.map do |recipe|
            Recipe.find(recipe.recipe_id)
        end
    end

    def my_cuisines
        self.user_recipes.map do |recipe|
            Cuisine.find(Recipe.find(recipe.recipe_id).cuisine_id)
        end
    end

    def most_cooked
        Recipe.find(self.user_recipes.order(:times_cooked).first.recipe_id)
    end

    def least_cooked
        Recipe.find(self.user_recipes.order('times_cooked: DESC').first.recipe_id)
    end
    
end