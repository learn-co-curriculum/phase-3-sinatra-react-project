class Restaurant < ActiveRecord::Base
    has_many :restaurant_images
    has_many :reviews
    accepts_nested_attributes_for :restaurant_images
    has_many :users, through: :reviews

    # def self.find_nearby_restaurants(zipcode)
    #     nearyby_restaurants_array = []
    #     Restaurant.all.map do |r|
    #         lat1 = r.latitude
    #         lon1 = r.longitude

    #         binding.pry
    #         clean_data

            
    #     end
    # end
end