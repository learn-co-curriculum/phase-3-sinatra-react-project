class NeighborhoodController < ApplicationController

  # get neighborhoods
  # create a neighborhood

  get '/neighborhoods' do
    neighborhoods = Neighborhood.all
    neighborhoods.to_json(include: {locations: { include: :household } })
  end

  post '/neighborhoods' do
    #binding.pry
    neighborhood = Neighborhood.new( name: params[:name] )
    if neighborhood.save
      neighborhood.to_json
    else
      { errors: neighborhood.errors.full_messages }.to_json
    end
  end


  get '/neighborhoods/:id' do
    neighborhood = Neighborhood.find(params[:id])
    neighborhood.to_json(include: {locations: { include: :household } })
  end

end