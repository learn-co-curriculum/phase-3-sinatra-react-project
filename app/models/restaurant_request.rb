class RestaurantRequest < ActiveRecord::Base
    has_many :restaurant_votes
end