class User < ActiveRecord::Base
    has_many :ingredients
    has_many :dishes
    has_many :favorite_dishes, through: :dishes

    # def toggle_favorite
    #     favorited = Dish.favorite
    #     !favorited
    # end

    # def favorites 
    #     Dish.all.where("favorite = true").map
    # end
    
end
