class Employee < ActiveRecord::Base
    belongs_to :company
    belongs_to :team
    has_many :tasks
end