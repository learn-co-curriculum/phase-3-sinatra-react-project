class Animal < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter
end