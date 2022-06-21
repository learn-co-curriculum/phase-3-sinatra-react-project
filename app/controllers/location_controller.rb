class LocationController < ApplicationController

  # get all households of a neighborhood
  # create a household
  # update a household
  # delete a household


  get '/locations' do
    households = Household.all
    households.to_json
  end

  post '/locations' do

    # household = Household.new(family_name: params["familyName"])
    # if  household.save
    #   household.to_json
    # else
    #   { errors: household.errors.full_messages }.to_json
    # end
  end

  get '/locations /:id' do
    household = Household.find(params[:id])
    household.to_json
  end

end