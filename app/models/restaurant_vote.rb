class RestaurantVote < ActiveRecord::Base
    belongs_to :restaurant_request
end