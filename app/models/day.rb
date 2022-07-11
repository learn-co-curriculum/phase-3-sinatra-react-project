class Day < ActiveRecord::Base
    has_many :dishes
    has_many :meals, through: :dishes

    
                
end