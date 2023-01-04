
class Category < ActiveRecord::Base
    has_many :tasks
    has_many :days, through: :tasks

    
end