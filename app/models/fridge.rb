class Fridge < ActiveRecord::Base
    has_many :foods
    has_many :users, through: :foods

    

    private
        
end
