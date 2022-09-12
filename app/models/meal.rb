class Meal < ActiveRecord::Base 
    belongs_to :day
    belongs_to :recipe 
end