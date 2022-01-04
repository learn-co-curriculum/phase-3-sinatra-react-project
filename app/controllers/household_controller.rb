class HouseholdController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/households" do
      Household.all.to_json
    end
  
    get "/households/:id" do
      Household.find(params[:id]).to_json
    end
  
    post "/households" do
      Household.create(
        household_name: params[:household_name]
      ).to_json
    end
  
    delete '/households/:id' do
      house = Household.find(params[:id])
      house.destroy
      house.to_json
    end
end