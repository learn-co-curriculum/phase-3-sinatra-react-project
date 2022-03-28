class Shelter < ActiveRecord::Base
    has_many :animals
    has_many :adopters, through: :animals
end