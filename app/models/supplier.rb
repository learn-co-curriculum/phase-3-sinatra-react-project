class Supplier < ActiveRecord::Base
    has_many :purchases
    has_many :products, through: :purchases
end