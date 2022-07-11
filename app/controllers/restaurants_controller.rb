class RestaurantsController < ApplicationController
    get "/restaurants" do
        if params.include?("include_review")
            #can we get this to return most recent review based on time?
            Restaurant.includes(:reviews).first.to_json
        else 
            Restaurant.all.to_json
        end
    end
    get "/restaurants/:id" do 
        find_restaurnt
        @restaurant.includes(:reviews).to_json
    end
    private 
    def find_restaurnt
        @restaurant = Restaurant.find(params[:id])
    end
end