class Service < ActiveRecord::Base
    has_many :reservations
    has_many :clients, through: :reservations
end