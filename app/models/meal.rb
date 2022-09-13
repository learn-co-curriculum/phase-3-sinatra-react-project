class Meal < ActiveRecord::Base 
    belongs_to :day 
    has_many :meal_items 
    has_many :items, through: :meal_items
end