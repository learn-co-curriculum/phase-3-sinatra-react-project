class NeighborhoodController < ApplicationController

  # get neighborhoods
  # create a neighborhood

  get '/neighborhoods' do
    neighborhoods = Neighborhood.all
    neighborhoods.to_json(include: [locations: { include: [:household] } ] )
  end

  post '/neighborhoods' do
    #binding.pry
    neighborhood = Neighborhood.new(params[:neighborhood])
    if neighborhood.save
      neighborhood.to_json
    else
      { errors: neighborhood.errors.full_messages }.to_json
    end
  end
end