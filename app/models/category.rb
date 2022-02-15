class Category < ActiveRecord::Base
    has_many :collections
    has_many :products, through: :collections
end