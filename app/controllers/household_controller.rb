class HouseholdController < ApplicationController

  get '/households' do
    households = Household.all
    households.to_json
  end

  post '/households' do
    household = Household.new(params[:household])
    if  household.save
      household.to_json
    else
      { errors: household.errors.full_message }.to_json
    end
  end

end