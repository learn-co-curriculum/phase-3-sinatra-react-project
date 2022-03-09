class Dog < ActiveRecord::Base
    belongs_to :clients
    has_many :walkers, through: :clients
end