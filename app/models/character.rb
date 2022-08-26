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

    def grab_spells inputArray
        self.klass.spells.where(level: inputArray[0]).sample(inputArray[1])
    end

    def fetch_spells
        spells = []
        if self.level == 20
            args = [[9,1],[8,1],[7,2],[6,2],[5,3],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 19
            args = [[9,1],[8,1],[7,1],[6,2],[5,3],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 18
            args = [[9,1],[8,1],[7,1],[6,1],[5,3],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 17
            args = [[9,1],[8,1],[7,1],[6,1],[5,2],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 15 || self.level == 16
            args = [[8,1],[7,1],[6,1],[5,2],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 13 || self.level == 14
            args = [[7,1],[6,1],[5,2],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 11 || self.level == 12
            args = [[6,1],[5,2],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 10
            args = [[5,2],[4,3],[3,3],[2,3],[1,4],[0,5]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 9
            args = [[5,1],[4,3],[3,3],[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 8
            args = [[4,2],[3,3],[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 7
            args = [[4,1],[3,3],[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 6
            args = [[3,3],[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 5
            args = [[3,2],[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 4
            args = [[2,3],[1,4],[0,4]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 3
            args = [[2,2],[1,4],[0,3]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 2
            args = [[1,3],[0,3]]
            spells << args.map {|arg| self.grab_spells(arg)}
        elsif self.level == 1
            args = [[1,2],[0,3]]
            spells << args.map {|arg| self.grab_spells(arg)}
        end
        spells = spells.flatten
        spells
    end

    def set_skills
        skills = []
        6.times do skills << rand(1..18) end
        skills = skills.uniq
        skills.each {|s| CharSkill.create(skill_id: s, character_id: self.id)}
    end
    
end