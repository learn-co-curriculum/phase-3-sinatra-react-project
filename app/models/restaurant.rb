class Restaurant < ActiveRecord::Base
    has_many :meal_plans
end