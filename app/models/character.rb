class Character < ActiveRecord::Base
    belongs_to :race
    belongs_to :klass
    belongs_to :player
    has_many :char_feats
    has_many :feats, through: :char_feats
    has_many :spells, through: :klass


    def calculate_hp 
        (self.klass.hit_die + self.con + (self.level*rand(1..self.klass.hit_die)))

    end
    def is_spellcaster?
        [2, 3, 4, 7, 8, 10, 11, 12].include?(self.klass_id)
    end
end