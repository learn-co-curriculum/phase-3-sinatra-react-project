class Task < ActiveRecord::Base
    belongs_to :team
    has_many :employees
end