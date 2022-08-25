class CharSkill < ActiveRecord::Base
    belongs_to :skill
    belongs_to :klass
    belongs_to :race
    belongs_to :character
end