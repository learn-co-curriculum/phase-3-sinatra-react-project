class Customer < ActiveRecord::Base
    has_many :orders
    has_many :bubbleteas, through: :orders
end