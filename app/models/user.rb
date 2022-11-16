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

    def add_ingredient(name, quantity)
        check_ingredient = Ingredient.find_by(name: name.downcase)
        in_stock = true

        if quantity > 0
            in_stock = true
        else
            in_stock =false
        end
        # checks to see if the user added ingredient exists in the Ingredients table, then checks agains the User's list
        # If the new ingredient exists in master list, this method adds it to the user. If it does not exists in master list
        # this methods add ingredient to both tables
        if Ingredient.exists?(name: name.downcase) == true and UserIngredient.exists?(ingredient_id: check_ingredient) == true
            "Ingredient already on your list"
        elsif Ingredient.exists?(name: name.downcase) == true and UserIngredient.exists?(ingredient_id: check_ingredient) == false
            UserIngredient.create(user_id: self.id, ingredient_id: check_ingredient.id, quantity: quantity)
        else
            new_ingredient = Ingredient.create(name: name.titleize)
            UserIngredient.create(user_id: self.id, ingredient_id: new_ingredient.id, quantity: quantity, in_stock: in_stock)
        end
        
    end


    # Deletes ingredient from specific User only.
    def delete_ingredient(name)
        to_delete = Ingredient.all.find do |ingredient|
            ingredient.name.downcase == name.downcase
        end
       ui_to_delete = UserIngredient.find_by(ingredient_id: to_delete.id)
       ui_to_delete.delete
        # UserIngredient.delete_by(ingredient_in: delete.id)
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

    def add_recipe(name, cuisine, times_cooked = 0, instructions, **ingredients)
        check_cuisine = Cuisine.find_by(name: cuisine.downcase) ? Cuisine.find_by(name: cuisine.downcase) : Cuisine.create(name: cuisine.titleize) 
        check_recipe = Recipe.find_by(name: name.downcase) 

        if Recipe.exists?(name: name.downcase) == true and UserRecipe.exists?(recipe_id: check_recipe) == true
            "Recipe already on your list"
        elsif Recipe.exists?(name: name.downcase) == true and UserRecipe.exists?(recipe_id: check_recipe) == false
            UserRecipe.create(user_id: self.id, recipe_id: check_recipe.id)
        else 
            new_recipe = Recipe.create(name: name.titleize, cuisine_id: check_cuisine.id, times_cooked: times_cooked, instructions: instructions)
            UserRecipe.create(user_id: self.id, recipe_id: new_recipe.id)
        end
    end
            
    def delete_recipe(name)
        to_delete = Recipe.all.find do |recipe|
            recipe.name.downcase == name.downcase
        end
        ur_to_delete = UserRecipe.find_by(recipe_id: to_delete.id)
        ur_to_delete.delete
    end


    
end