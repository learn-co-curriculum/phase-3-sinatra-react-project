class RestaurantRequest < ActiveRecord::Base
    has_many :request_votes
end