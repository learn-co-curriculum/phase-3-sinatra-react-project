class Animal < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter
    has_many :comments
    has_many :adopters, through: :comments
end