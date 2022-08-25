class Skill < ActiveRecord::Base
    has_many :char_skills
    has_many :characters, through: :char_skills
    has_many :klasses, through: :char_skills
    has_many :races, through: :char_skills
end