class Dish < ActiveRecord::Base
    has_many :dish_ingredients
    belongs_to :user_dish
    has_many :users, through: :user_dish
    belongs_to :cuisine


end