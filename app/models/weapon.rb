class Weapon < ActiveRecord::Base 
    has_many :template_weapons
    has_many :templates, through: :template_weapons
    
end