class Car < ActiveRecord::Base
    has_many :transactions
    has_many :buyers, through: :transaction
end