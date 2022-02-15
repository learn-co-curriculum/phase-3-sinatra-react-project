class Product < ActiveRecord::Base
    belongs_to :category

    has_many :product_suppliers
    has_many :suppliers, through: :product_suppliers
end