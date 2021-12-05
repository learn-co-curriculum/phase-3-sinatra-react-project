class Actor < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user
    
end