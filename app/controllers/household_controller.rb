class HouseholdController < ApplicationController

  # get all households of a neighborhood
  # create a household
  # update a household
  # delete a household


  get '/households' do
    households = Household.all
    households.to_json(include: [:members])
  end

  post '/households' do
    household = Household.new(params[:household])
    if  household.save
      household.to_json
    else
      { errors: household.errors.full_messages }.to_json
    end
  end

end