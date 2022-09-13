class Day < ActiveRecord::Base 
   has_many :meals
   has_many :meal_items, through: :meals 
end