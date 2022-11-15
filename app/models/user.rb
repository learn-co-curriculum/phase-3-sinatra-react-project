class User < ActiveRecord::Base
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients
    has_many :user_dishes
    has_many :dishes, through: :user_dishes

    # def toggle_favorite
    #     favorited = Dish.favorite
    #     !favorited
    # end

    # def favorites 
    #     Dish.all.where("favorite = true").map
    # end
    
end
