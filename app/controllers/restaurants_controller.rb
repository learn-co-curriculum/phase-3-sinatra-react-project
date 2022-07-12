class RestaurantsController < ApplicationController
    get "/restaurants" do
        if params.include?("include_review")
            #can we get this to return most recent review based on time?
            Restaurant.all.to_json(include: :reviews)
        else 
            Restaurant.all.to_json
        end
    end
    get "/restaurants/:id" do 
        find_restaurant
        @restaurant.includes(:reviews).to_json
    end
    private 
    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end