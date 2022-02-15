class Product < ActiveRecord::Base
    has_many :collections
    has_many :categories, through: :collections

    has_many :purchases
    has_many :suppliers, through: :purchases
end