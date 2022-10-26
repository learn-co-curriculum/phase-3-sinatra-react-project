class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def self.sort_restaurants
        Restaurant.all.sort
    end

    def restaurant_info
        self.map{ |p| Restaurant.find(p.restaurant_id) }
    end
end