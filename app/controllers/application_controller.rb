class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/bands' do
    bands = Band.all
    bands.to_json
  end

  get '/band/:id' do
    band = Band.find(params[:id])
    band.to_json
  end

  get '/cities' do
    cities = City.all
    cities.to_json
  end

  get '/cities/:id' do
    city = Band.find(params[:id])
    city.to_json
  end

  get '/concerts' do
    concerts = Concert.all
    concerts.to_json
  end

  get '/concerts/:id' do
    concert = Concert.find(params[:id])
    concert.to_json
  end

  get '/eateries' do
    eateries = Eatery.all
    eateries.to_json
  end

  get '/eateries/:id' do
    eatery = Eatery.find(params[:id])
    eatery.to_json
  end




end
