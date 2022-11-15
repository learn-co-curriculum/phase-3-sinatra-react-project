class Dish < ActiveRecord::Base
    has_many :ingredients
    has_many :users, through: :ingredients
    has_many :available_dishes, through: :ingredients
    serialize :comments, Array

end