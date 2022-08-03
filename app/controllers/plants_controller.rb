class PlantsController < ApplicationController
    # read all plants
    get '/plants' do
        plants=Plant.all
        plants.to_json
    end

    get '/plants/:id' do
        Plant.find(params[:id]).to_json
    end

    post '/plants' do
        Plant.create(params).to_json
    end

    patch '/plants/:id' do
        plant=Plant.find(params[:id])
        plant.update(params)
        plant.to_json
    end

    delete '/plants/:id' do
        plant=Plant.find(params[:id])
        plant.destroy
    end

    get '/plants/:id/user' do
        plant= Plant.find(params[:id])
        plant.user.to_json
    end 
end