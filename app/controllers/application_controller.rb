class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # returns everything
  get "/places" do
    place = Place.all
    place.to_json(include: { reviews: { include: :user }})
  end
  #returns a specific instance
  get "/places/:id" do
    place = Place.find(params[:id])
    place.to_json(include: { reviews: { include: :user }})
  end
  #deletes place
  delete "/places/:id" do 
    place = Place.find(params[:id])
    place.destroy
    place.to_json
  end
  #updates price of place
  patch "/places/:id" do
    place = Place.find(params[:id]).to_json
    place.update(price:params[:price])
  end
  #grabs all the places by category
  get "/places/category_sort/:category" do
    category = Place.category_sort(params[:category])
    category.to_json
  end

  #post request from input form
  post '/places' do
    place = Place.create(name:params[:name], category:params[:category], price:params[:price], location:params[:location], image_url:params[:image_url])
    place.to_json
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


end
