class User < ActiveRecord::Base
    has_many :foods
    has_many :fridges, through: :foods
    

    private
        
end
