class UserRecipe < ActiveRecord::Base 
    belongs_to :user
    has_many :recipes
end