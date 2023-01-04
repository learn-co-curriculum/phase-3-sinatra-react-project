
class Task < ActiveRecord::Base
    belongs_to :category
    belongs_to :day
    
end