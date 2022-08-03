class Dog < ActiveRecord::Base
    has_many :orders
    has_many :suppliers, through: :orders

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end