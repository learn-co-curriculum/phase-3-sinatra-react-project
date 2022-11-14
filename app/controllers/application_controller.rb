class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/restaurant_images" do
    restaurant_images = RestaurantImage.all
    restaurant_images.to_json
  end

end
