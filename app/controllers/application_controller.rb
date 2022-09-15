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

  post '/eateries' do
    city = City.find_or_create_by(
      name: params[:newCity][:name], 
      state: params[:newCity][:state]
    )
    city.to_json
    eatery = Eatery.create(
      name: params[:newEatery][:name],
      cuisine_type: params[:newEatery][:cuisine_type],
      downtown?: params[:newEatery][:downtown?],
      rating: params[:newEatery][:rating],
      address: params[:newEatery][:address],
      city_id: city.id
    )
    eatery.to_json
  end

  post '/concerts' do
    # create variables for city and band id
    # the id will either be found or created
    # this will replace the params
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
    concert.to_json(include: :band)
  end

  delete '/eateries/:id' do
    eatery = Eatery.find(params[:id])
    eatery.destroy.to_json
  end

  delete '/concerts/:id' do
    concert = Concert.find(params[:id])
    concert.destroy.to_json
  end

end
