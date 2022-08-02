class Supplier < ActiveRecord::Base
    has_many :orders
    has_many :dogs, through: :orders
end