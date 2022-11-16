class UserIngredient < ActiveRecord::Base 
    has_many :ingredients
    belongs_to :user

    # Deletes ingredient from specific User only.
    def self.delete_ingredient(name, user)
        to_delete = Ingredient.all.find do |ingredient|
            ingredient.name.downcase == name.downcase
        end
        ui_to_delete = UserIngredient.find_by(ingredient_id: to_delete.id)
        ui_to_delete.delete
    end

end