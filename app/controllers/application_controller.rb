class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # returns everything
  get "/places" do
    place = Place.all
    place.to_json(include: { reviews: { include: :user }})
  end
  #returns all users
  get "/users" do
    user = User.all
    user.to_json
  end
  #returns all reviews
  get "/reviews" do
    review = Review.all
    review.to_json
  end
  #returns a specific instance
  get "/places/:id" do
    place = Place.find(params[:id])
    place.to_json(include: { reviews: { include: :user }})
  end
  # get "/places/cheapest" do
  #   cheapest = Place.cheapest
  #   cheapest.to_json
  # end
  #returns array of the places with selected category
  get "/places/category_sort/:category" do
    category = Place.category_sort(params[:category])
    category.to_json
  end

  delete "/places/:id" do 
    place = Place.find(params[:id])
    place.destroy
    place.to_json
  end
end
