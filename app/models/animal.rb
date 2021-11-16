class Animal < ActiveRecord::Base
    belongs_to :shelter    
    has_many :adoption_applications

    def shelter_name
        shelter.name
    end
end