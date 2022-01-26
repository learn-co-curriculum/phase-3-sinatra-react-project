class List < ActiveRecord::Base
    has_many :parks
    has_many :states, through: :parks

    
end