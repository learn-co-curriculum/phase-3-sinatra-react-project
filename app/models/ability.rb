class Ability < ActiveRecord::Base 
    has_many :template_abilities
    has_many :templates, through: :template_abilities
    
end