class Ingredient < ActiveRecord::Base
    belongs_to :user
    belongs_to :recipe
    
    def self.add_ingredient(name, quantity, user)
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
            UserIngredient.create(user_id: user.id, ingredient_id: check_ingredient.id, quantity: quantity)
        else
            new_ingredient = Ingredient.create(name: name.titleize)
            UserIngredient.create(user_id: user.id, ingredient_id: new_ingredient.id, quantity: quantity, in_stock: in_stock)
        end
        
    end



end