class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do 
    habitats = Habitat.all
    habitats.to_json(include: {sightings: {include: :animal}})
  end

  get '/habitats' do 
    habitats = Habitat.all
    habitats.to_json(include: {sightings: {include: :animal}})
  end

  get '/habitats/:id' do
    habitat = Habitat.all.find(params[:id])
    habitat.to_json(include: {sightings: {include: :animal}})
  end

  post '/habitats' do
    habitat = Habitat.create(
      name: params[:name]
    )
    habitat.to_json(include: {sightings: {include: :animals}})
  end

  # patch '/habitat/:id' do
  #   habitat = Habitat.find(params[:id])
  #   habitat.update(
  #     body: params[:body]
  #   )
  #   habitat.to_json
  # end

  delete '/habitat/:id' do
    habitat = Habitat.find(params[:id])
    habitat.destroy
    habitat.to_json(include: {sightings: {include: :animals}})
  end
  # database.

  get '/animals' do 
      animals = Animal.all
      animals.to_json(include: {sightings: {include: :habitat}})
  end

  post '/animals' do
      animal = Animal.create(
        name: params[:name],
        sighted: params[:sighted],
        extinct: params[:extinct]
      )
      habitat.to_json(include: {sightings: {include: :habitat}})
  end

  patch '/animal/:id' do
    animal = Animal.find(params[:id])
    animal.update(
      sighted: params[:sighted]
    )
    animal.to_json(include: {sightings: {include: :habitat}})
  end

  delete '/animal/:id' do
    animal = Animal.find(params[:id])
    animal.destroy
    animal.to_json(include: {sightings: {include: :habitat}})
  end

  get '/sightings' do
    sightings = Sighting.all
    sightings.to_json
  end

  post '/sightings/' do
    sighting = Sighting.create(
      habitat_id: params[:habitat_id],
      animal_id: params[:animal_id]
    )
  end

end
