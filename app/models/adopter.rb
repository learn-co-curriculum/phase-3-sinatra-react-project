class Adopter < ActiveRecord::Base
    has_many :animals
    has_many :shelters, through: :animals
end