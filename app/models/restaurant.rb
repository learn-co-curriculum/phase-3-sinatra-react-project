require_relative "./zipcodes"

class Restaurant < ActiveRecord::Base
    has_many :restaurant_images
    has_many :reviews
    accepts_nested_attributes_for :restaurant_images
    has_many :users, through: :reviews

    def self.find_nearby_restaurants(zipcode)
        extend Geocoder::Calculations
        zipcode_array = Zipcode.codes.find {|z| z[0] == zipcode }[1...3]

        dist_array = Restaurant.all.map do |r|
            rest_coords = [r.latitude, r.longitude]
            distance = distance_between(zipcode_array, rest_coords)
            {"restaurant_id" => r.id, "distance" => distance}
        end
        
        dist_array.sort_by {|h| h["distance"]}[0...50].map{|h| Restaurant.find(h["restaurant_id"])}

    end
end