class Client < ActiveRecord::Base
    has_many :reservations
    has_many :services, through: :reservations
end