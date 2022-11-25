class Restaurant < ActiveRecord::Base
    has_many :MealPlan
    
end