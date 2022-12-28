require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # RESTAURANTS CRUD
  get '/restaurants' do
    restaurants = Restaurant.all
    restaurants.to_json(include: :meal_plans)
  end

  get '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json(include: :meal_plans)
  end

  # MEAL_PLANS CRUD
  get '/meal-plans/:id' do
    meal_plan = MealPlan.find(params[:id])
    meal_plan.to_json
  end

  patch '/meal-plans/:id' do
    meal_plan = MealPlan.find(params[:id])
    meal_plan.update(
      subscribers: params[:subscribers]
    )
    meal_plan.to_json
  end

  # RESTAURANT_REQUESTS CRUD
  get '/restaurant-requests' do
    requests = RestaurantRequest.all
    requests.to_json(include: :restaurant_votes)
  end

  post '/restaurant-requests' do
    request = RestaurantRequest.create(
      name: params[:name],
      location: params[:location],
      creator: params[:creator]
    )
    request.to_json
  end

  get '/restaurant-requests/:id' do
    request = RestaurantRequest.find(params[:id])
    request.to_json
  end

  delete '/restaurant-requests/:id' do 
    request = RestaurantRequest.find(params[:id])
    request.destroy
    request.to_json
  end


  # VOTES CRUD
  get '/restaurant-votes/:id' do
    first_vote = RestaurantVote.find_by(restaurant_request_id: params[:id])
    first_vote.to_json
  end

  delete '/restaurant-votes/:id' do
    first_vote = RestaurantVote.find_by(restaurant_request_id: params[:id])

    first_vote.destroy

    remaining_votes = RestaurantRequest.find(params[:id]).restaurant_votes.count

    remaining_votes.to_json
  end

  post '/restaurant-votes' do
    restaurant_vote = RestaurantVote.create(
      vote: params[:vote],
      restaurant_request_id: params[:restaurant_request_id]
    )
    restaurant_vote.to_json
  end
  
end
