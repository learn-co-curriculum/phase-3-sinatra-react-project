class Creature < ActiveRecord::Base
    has_many pets 
    has_many :users, through: :pets
end