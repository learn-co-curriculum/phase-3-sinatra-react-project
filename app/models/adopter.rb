class Adopter < ActiveRecord::Base
    has_many :animals
    has_many :comments
    has_many :animals, through: :comments
    has_many :shelters, through: :animals
end