class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get '/restaurants' do
    restaurants = Restaurant.all
    restaurants.to_json
  end

  get '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json(include: :meal_plans)
  end

  get '/restaurant-requests' do
    requests = RestaurantRequest.all
    requests.to_json
  end

  get '/restaurant-requests/:id' do
    restaurant = RestaurantRequest.find(params[:id])
    restaurant.to_json(include: :restaurant_votes)
  end



end
