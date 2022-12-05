class Customer < ActiveRecord::Base

    has_many :customers

    has_many :bubbleteas, through: :orders
end