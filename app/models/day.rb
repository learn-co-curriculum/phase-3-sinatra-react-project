class Day < ActiveRecord::Base 
    has_many :meals 
    has_many :recipes, through: :meals 
end