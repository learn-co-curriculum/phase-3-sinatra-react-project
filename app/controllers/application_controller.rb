class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bands' do
    bands = Band.all
    bands.to_json
  end

  get '/bands/:id' do
    band = Band.find(params[:id])
    band.to_json
  end

  get '/cities' do
    cities = City.all
    cities.to_json
  end

  get '/cities/:id' do
    city = City.find(params[:id])
    city.to_json
  end

  get '/concerts' do
    concerts = Concert.all
    concerts.to_json(include: :band)
  end

  get '/concerts/:id' do
    concert = Concert.find(params[:id])
    concert.to_json
  end

  get '/eateries' do
    # binding.pry
    eateries = Eatery.all
    eateries.to_json
  end

  get '/eateries/:id' do
    eatery = Eatery.find(params[:id])
    eatery.to_json
  end

end
