class RestaurantsController < ApplicationController
    get "/restaurants" do
        methods = {}
        if params.include?("include_review")
            #can we get this to return most recent review based on time?
            methods.merge!({include: :reviews})
        end
        if params.include?("friends_only")
            #user id in params 
            #set = friends.reviews.restaurants.id
            #Restaurant.all.where(id inside set).tojson(methods)
        end
        Restaurant.all.to_json(methods)
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