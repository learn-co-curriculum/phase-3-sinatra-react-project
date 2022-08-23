class Klass < ActiveRecord::Base
    has_many :characters
    has_many :klass_spells
    has_many :spells, through: :klass_spells

    def is_spellcaster?
        [2, 3, 4, 7, 8, 10, 11, 12].include?(self.id)
    end

end