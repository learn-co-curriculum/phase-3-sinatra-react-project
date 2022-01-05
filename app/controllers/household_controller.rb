class HouseholdController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/households" do
      Household.all.to_json(include: :users)
    end

    get "/households/:id/all" do
      Household.find(params[:id]).to_json(include: {
        tasks: {
          include: [
            :pet,
            :user
            ]
          }
        }
      )
    end
  
    get "/households/:id" do
      Household.find(params[:id]).to_json(include: :users)
    end

    get "/households/:id/pets" do
      Household.find(params[:id]).to_json(include: :pets)
    end

    get "/households/:id/tasks" do
      Household.find(params[:id]).to_json(include: {
        tasks: {
          include: [
            :pet,
            :user
            ]
          }
        }
      )
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

    patch "/households/:id" do
        house = Household.find(params[:id])
        house.update(
            household_name: params[:household_name]
        )
        house.to_json
    end
end