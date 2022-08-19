class Spell < ActiveRecord::Base
    has_many :klass_spells
    has_many :klasses, through: :klass_spells    
end