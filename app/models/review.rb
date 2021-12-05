class Review < ActiveRecord::Base\
    belongs_to :show
    belongs_to :movie
    
end