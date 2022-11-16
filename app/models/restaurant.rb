require_relative "./zipcodes"

class Restaurant < ActiveRecord::Base
    has_many :restaurant_images
    has_many :reviews
    accepts_nested_attributes_for :restaurant_images
    has_many :users, through: :reviews

    def self.find_nearby_restaurants(zipcode)
        # Search the Zipcode array in the zipcode module to find the element that contains the zip code and its lon and lat coordinates. Store them as variables.
        zipcode_array = Zipcode.codes.find {|z| z[0] == zipcode }
            lat2 = zipcode_array[1] * Math::PI / 180 
            lon2 = zipcode_array[2] * Math::PI / 180
        # Uses the Haversine formula to calculate distance in meters between lon and lat coordinates: https://www.geeksforgeeks.org/program-distance-two-points-earth/#:~:text=For%20this%20divide%20the%20values,is%20the%20radius%20of%20Earth.
        dist_array = Restaurant.all.map do |r|
            lat1 = r.latitude * Math::PI / 180
            lon1 = r.longitude * Math::PI / 180

            dlon = lon2 - lon1
            dlat = lat2 - lat1

            a = Math.sin(dlat / 2) * Math.sin(dlat / 2)
                + Math.cos(lat1) * Math.cos(lat2) * Math.sin(dlon / 2) * Math.sin(dlon / 2)
            
            c = 2 * Math.asin(Math.sqrt(a))
            radius = 6371
            #Stores distance and restaurant id as an array of hashes
            {"restaurant_id" => r.id, "distance" => c*radius}
        end
        # Sorts dist_array by distance in ascending order and filters the first 50 elements
        dist_array.sort_by {|h| h["distance"]}[0...50].map{|h| Restaurant.find(h["restaurant_id"])}
    end
end