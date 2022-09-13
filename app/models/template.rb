class Template < ActiveRecord::Base
    has_many :characters
    has_many :users, through: :characters
    has_many :template_weapons
    has_many :weapons, through: :template_weapons
    has_many :template_spells
    has_many :spells, through: :template_spells
    has_many :template_abilities
    has_many :abilities, through: :template_abilities
    
end