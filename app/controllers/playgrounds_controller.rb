class PlaygroundsController < ApplicationController
    # returns all playgrounds
    get "/playgrounds" do
        Playground.all.to_json
    end

    get "/playgrounds/:id" do
        playground = Playground.find(params[:id])
        playground.to_json
    end


    post "/playgrounds" do
        town = Town.find(params["town_id"])
        playground = Playground.create(
            name: params[:name],
            address: params[:address],
            town_id: town.id
        )
        playground.to_json
    end

    patch "/playgrounds/:id" do
        playground = Playground.find(params[:id])
        playground.update(params)
        playground.to_json
    end


    delete "/playgrounds/:id" do
        playground = Playground.find(params[:id])
        playground.destroy
    end


end
 