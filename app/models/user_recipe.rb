class UserRecipe < ActiveRecord::Base 
    belongs_to :user
    has_many :recipes

    def self.delete_recipe(name)
        to_delete = Recipe.all.find do |recipe|
            recipe.name.downcase == name.downcase
        end
        ur_to_delete = UserRecipe.find_by(recipe_id: to_delete.id)
        ur_to_delete.delete
    end
end