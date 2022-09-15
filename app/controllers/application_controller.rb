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
    # cities.to_json(include: :concerts)
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

  get '/cities/:id/concerts' do #:city = LA, :id = 1 -> /cities/1/concerts
    Concert.where(city_id: params[:id]).to_json(include: :band) #Concert.where(city_id: 1)
  end

  get '/cities/:id/eateries' do 
    Eatery.where(city_id: params[:id]).to_json 
  end

  patch '/eateries/:id' do
    eatery = Eatery.find(params[:id])
    eatery.update(rating: params[:rating])
    eatery.to_json
  end

  post '/cities' do
    city = City.create(
      name: params[:name],
      state: params[:state]
    )
    city.to_json
  end

  post '/eateries' do
    eatery = Eatery.create(
      name: params[:name],
      cuisine_type: params[:cuisine_type],
      downtown?: params[:downtown?],
      rating: params[:rating],
      address: params[:address],
      city_id: params[:city_id]
    )
    eatery.to_json
  end

  post '/concerts' do
    # create variables for city and band id
    # the id will either be found or created
    # this will replace the params
    binding.pry
    city = City.find_or_create_by(
      name: params[:newCity][:name], 
      state: params[:newCity][:state]
    )
    city.to_json
    band = Band.find_or_create_by(
      name: params[:newBand][:name], 
      genre: params[:newBand][:genre]
    )
    band.to_json
    concert = Concert.create(
    date: params[:newConcert][:date],
    venue_name: params[:newConcert][:venue_name],
    venue_type: params[:newConcert][:venue_type],
    city_id: city.id,
    band_id: band.id
    )
    concert.to_json
  end
 
  post '/bands' do
    band = Band.create(
      name: params[:name], 
      genre: params[:genre]
    )
    band.to_json
  end





end
