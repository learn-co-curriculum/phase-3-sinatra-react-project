class Character < ActiveRecord::Base
    belongs_to :race
    belongs_to :klass
    belongs_to :player
    has_many :char_skills
    has_many :skills, through: :char_skills
    has_many :char_feats
    has_many :feats, through: :char_feats
    has_many :spells, through: :klass


    def calculate_hp 
        (self.klass.hit_die + self.con + (self.level*rand(1..self.klass.hit_die)))

    end

    def is_spellcaster?
        [2, 3, 4, 7, 8, 10, 11, 12].include?(self.klass_id)
    end

    def grab_spells lvl, amt
        self.klass.spells.where(level: lvl).sample(amt)
    end

    def fetch_spells
        spells = []
        if self.level == 20
            spells << self.grab_spells(9, 1)
            spells << self.grab_spells(8, 1)
            spells << self.grab_spells(7, 2)
            spells << self.grab_spells(6, 2)
            spells << self.grab_spells(5, 3)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 19
            spells << self.grab_spells(9, 1)
            spells << self.grab_spells(8, 1)
            spells << self.grab_spells(7, 1)
            spells << self.grab_spells(6, 2)
            spells << self.grab_spells(5, 3)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 18
            spells << self.grab_spells(9, 1)
            spells << self.grab_spells(8, 1)
            spells << self.grab_spells(7, 1)
            spells << self.grab_spells(6, 1)
            spells << self.grab_spells(5, 3)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 17
            spells << self.grab_spells(9, 1)
            spells << self.grab_spells(8, 1)
            spells << self.grab_spells(7, 1)
            spells << self.grab_spells(6, 1)
            spells << self.grab_spells(5, 2)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 15 || self.level == 16
            spells << self.grab_spells(8, 1)
            spells << self.grab_spells(7, 1)
            spells << self.grab_spells(6, 1)
            spells << self.grab_spells(5, 2)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 13 || self.level == 14
            spells << self.grab_spells(7, 1)
            spells << self.grab_spells(6, 1)
            spells << self.grab_spells(5, 2)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 11 || self.level == 12
            spells << self.grab_spells(6, 1)
            spells << self.grab_spells(5, 2)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 10
            spells << self.grab_spells(5, 2)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 5)
        elsif self.level == 9
            spells << self.grab_spells(5, 1)
            spells << self.grab_spells(4, 3)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 8
            spells << self.grab_spells(4, 2)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 7
            spells << self.grab_spells(4, 1)
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 6
            spells << self.grab_spells(3, 3)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 5
            spells << self.grab_spells(3, 2)
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 4
            spells << self.grab_spells(2, 3)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 4)
        elsif self.level == 3
            spells << self.grab_spells(2, 2)
            spells << self.grab_spells(1, 4)
            spells << self.grab_spells(0, 3)
        elsif self.level == 2
            spells << self.grab_spells(1, 3)
            spells << self.grab_spells(0, 3)
        elsif self.level == 1
            spells << self.grab_spells(1, 2)
            spells << self.grab_spells(0, 3)
        end
        # binding.pry
        spells = spells.flatten
        # binding.pry
        spells
    end

    def set_skills
        skills = []
        6.times do skills << rand(1..18) end
        skills = skills.uniq
        skills.each {|s| CharSkill.create(skill_id: s, character_id: self.id)}
    end
    
end