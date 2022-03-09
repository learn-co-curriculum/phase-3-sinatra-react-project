class Client < ActiveRecord::Base 
    has_many :dogs
    has_many :walkers
end