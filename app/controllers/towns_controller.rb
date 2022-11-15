class TownsController < ApplicationController
    get "/towns" do
        Town.all.to_json(include: [:playgrounds])
    end
  
    post "/towns" do
    town = Town.new(params)
    if town.save
        town.to_json
    end
    end

 end
 