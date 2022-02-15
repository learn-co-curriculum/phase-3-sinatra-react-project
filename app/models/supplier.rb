class Supplier < ActiveRecord::Base
    has_many :product_suppliers
    has_many :products, through: :product_suppliers
end