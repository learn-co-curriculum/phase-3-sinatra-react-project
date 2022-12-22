class Restaurant < ActiveRecord::Base
    has_many :meal_plans
    has_many :subscribers, through: :meal_plans
end