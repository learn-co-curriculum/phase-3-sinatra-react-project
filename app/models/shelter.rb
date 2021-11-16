class Shelter < ActiveRecord::Base
    has_many :animals
    has_many :adoption_applications, through: :animals    
end