class NeighborhoodController < ApplicationController

  get '/neighborhoods' do
    neighborhoods = Neighborhood.all
    neighborhoods.to_json
  end

  post '/neighborhoods' do
    neighborhood = Neighborhood.new(params[:neighborhood])
    if neighborhood.save
      neighborhood.to_json
    else
      { errors: neighborhood.errors.full_message }.to_json
    end
  end
end