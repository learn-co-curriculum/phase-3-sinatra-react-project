class Restaurant < ActiveRecord::Base
    has_many :orders
    has_many :menu_items
    has_many :business_hours
    has_many :ratings
    belongs_to :cuisine

    def average_rating
        totalratings = self.ratings.sum(:rating) / self.ratings.length
    end

    def serialize_restaurant
        attributes_hash = self.attributes
        attributes_hash.merge!("rating" => self.average_rating)
    end

    def self.serialize_restaurants
        self.all.order(:name).map do |restaurant|
            restaurant.serialize_restaurant
        end
    end
end 