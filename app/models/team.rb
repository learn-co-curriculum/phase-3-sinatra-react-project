class Team < ActiveRecord::Base
    has_many :projects
    has_many :members
    has_many :tasks, through: :projects

    
end