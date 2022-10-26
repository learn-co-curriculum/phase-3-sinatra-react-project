require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/users' do
    users2 = User.all
    users2.to_json
  end

  get '/reviews' do
    reviews2 = Review.all
    reviews2.to_json
  end

  get '/restaurants' do
    restaurants2 = Restaurant.all
    restaurants2.to_json
  end

  patch "/restaurants/:favorite" do
    restaurant = Restaurant.find(params[:favorite])
    restaurant.update(favorite: !restaurant.favorite)
    restaurant.to_json
  end

  post '/restaurants' do
    newRestaurant = Restaurant.create(
      name: params[:name],
      summary: params[:summary],
      food_type: params[:food_type],
      price_rating: params[:price_rating]
    )
    newRestaurant.to_json
  end

  delete '/restaurants/:id' do
    # find the review using the IDong
    delRes = Restaurant.find(params[:id])
    # delete the review
    delRes.destroy
    # send a response with the deleted review as JSON
    delRes.to_json
  end
  

end
