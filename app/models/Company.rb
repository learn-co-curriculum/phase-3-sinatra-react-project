class Company < ActiveRecord::Base
    has_many :teams
    has_many :employees
end