require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  
  get "/continents" do
    continents = Continent.all 
    continents.to_json
  end
  
  get '/continents/:id' do
    continent = Continent.find(params[:id])
    continent.to_json
  end

  get "/destinations" do
    destinations = Destination.all 
    destinations.to_json(:include => {
      :continent => {
        :only => :continent_name
      },
      :reviews => {
        :include => :user
      }
    })
  end

  get "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.to_json
  end

  post "/destinations" do
    continent = Continent.find_by(continent_name: params[:continent])
    destination = Destination.create(
      city_name: params[:city_name],
      country_name: params[:country_name],
      img_url: params[:img_url],
      continent: continent
    )
    destination.to_json
  end

  patch "/destinations/:id" do
    destination = Destination.create(
      city_name: params[:city_name],
      country_name: params[:country_name],
      img_url: params[:img_url],
      continent_id: params[:continent_id]
    )
    destination.to_json
  end

  delete "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.destroy
    destination.to_json
  end

  get "/destinations/:id/reviews" do
    destination = Destination.find(params[:id]).reviews
    destination.to_json
  end

  post "/destinations/:id/reviews" do
    destination = Destination.find(params[:id])

    review = Review.create(
      message: params[:message],
      stars: params[:stars],
      destination_id: destination.id
    )
    review.to_json
  end

  get "/destinations/:id/reviews/:revid" do
    review = Destination.find(params[:id]).reviews.find(params[:revid])
    review.to_json
  end

  delete "/destinations/:id/reviews/:revid" do
    review = Destination.find(params[:id]).reviews.find(params[:revid])
    review.destroy
    review.to_json
  end

  get "/reviews" do
    reviews = Review.all 
    reviews.to_json
  end

  get "/reviews/:id" do
    review = Review.find(params[:id])
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

end
