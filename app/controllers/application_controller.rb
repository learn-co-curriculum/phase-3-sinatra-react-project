class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # GET Request for all restaurants
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json(include: [:reviews, :favorites])
  end

  # #GET Request for a specific restaurant, its reviews, and its favorites
  # get "/restaurants/:id" do
  #   restaurant = Restaurant.find(params[:id])
  #   restaurant.to_json(include: [:reviews, :favorites])
  # end

  #DELETE Request for a review
  delete '/reviews/:id' do
    review = Review.find(Params[:id])
    review.destroy
    review.to_json
  end

  #POST Request for a new item
  post '/favorites' do
    favorite = Favorite.create(
      food_name: params[:food_name],
      likes: params[:likes],
      restaurant: params[:restaurant]
    )
  end

  #PATCH Request for a review
  patch '/reviews/:id' do
    review = review.find(params[:id])
    review.update(
      rating: params[:rating],
      review: params[:review]
    )
  end
end
