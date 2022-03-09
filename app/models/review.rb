class Review < ActiveRecord::Base
    belongs_to :critic
    belongs_to :movie

   
end
