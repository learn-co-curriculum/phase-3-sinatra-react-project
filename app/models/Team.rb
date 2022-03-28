class Team < ActiveRecord::Base
    belongs_to :company
    has_many :tasks
    has_many :employees
end