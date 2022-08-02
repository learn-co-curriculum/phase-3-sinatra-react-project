class Request < ActiveRecord::Base
    belongs_to :business
    belongs_to :project
    
end