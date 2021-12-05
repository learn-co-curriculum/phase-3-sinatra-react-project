class Genre < ActiveRecord::Base
    belongs_to :show
    belongs_to :movie
    belongs_to :user
    
end