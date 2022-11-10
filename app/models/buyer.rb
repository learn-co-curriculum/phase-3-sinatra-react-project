class Buyer < ActiveRecord::Base
    has_many :transactions
    has_many :cars, through: :transactions
end