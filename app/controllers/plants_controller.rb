class PlantsController < ApplicationController
    

    # read all plants
    get '/plants' do
        plants=Plant.all
        plants.to_json
    end
end