class LocationController < ApplicationController


  get '/locations' do
    households = Household.all
    households.to_json
  end


  post '/locations' do
    location = Location.new(name: params[:name], address: params[:address], household_id: params[:household_id], neighborhood_id: params[:neighborhood_id])
    if  location.save
      location.to_json
    else
      { errors: location.errors.full_messages }.to_json
    end
  end

  get '/locations/:id' do
    location = Location.find(params[:id])
    location.to_json
  end

  delete '/locations/:id' do
    location = Location.find(params[:id])
    location.destroy
    location.to_json
  end

end