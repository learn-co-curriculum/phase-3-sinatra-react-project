class Customer < ActiveRecord::Base
    has_many :shops
    has_many :coffees, through: :shops
end
