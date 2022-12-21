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
    requests.to_json(include: :restaurant_votes)
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

  get '/restaurant-requests/count/:id' do
    votes = RestaurantRequest.find(params[:id]).restaurant_votes.count
    votes.to_json
  end

  get '/restaurant-requests/votes/:id' do
    first_vote = RestaurantVote.find_by(restaurant_request_id: params[:id])
    first_vote.to_json
  end

  delete '/restaurant-requests/votes/:id' do
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

  get '/restaurants/meal-plans/:id' do
    restaurant_subs = MealPlan.find(params[:id]).restaurant.subscribers
    restaurant_subs.to_json
  end

  patch '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.update(
      subscribers: params[:subscribers]
    )
    restaurant.to_json
  end





end
