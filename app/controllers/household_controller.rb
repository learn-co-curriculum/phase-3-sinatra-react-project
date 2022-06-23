class HouseholdController < ApplicationController

  # get all households of a neighborhood
  # create a household
  # update a household
  # delete a household


  get '/households' do
    households = Household.all
    households.to_json
  end

  post '/households' do
    members = params[:members].map do |m|
      Member.new(last_name: m[:last_name], first_name: m[:first_name])
    end

    household = Household.new(family_name: params[:family_name], members: members)
    if  household.save
      household.to_json
    else
      { errors: household.errors.full_messages }.to_json
    end
  end

  get '/households/:id' do
    household = Household.find(params[:id])
    household.to_json(include: [:locations, :members])
  end

end