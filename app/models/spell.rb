class Spell < ActiveRecord::Base 
    has_many :template_spells
    has_many :templates, through: :template_spells
    
end