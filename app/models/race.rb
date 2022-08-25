class Race < ActiveRecord::Base
    has_many :characters
    has_many :char_skills
    has_many :skills, through: :char_skills
end