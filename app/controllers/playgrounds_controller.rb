class PlaygroundsController < ApplicationController
    # returns all playgrounds
    get "/playgrounds" do
        playground_to_json
        # all.to_json(include: [town: {only: [:id, :name]}])
    end

  
    #creates a playground and associates the town 
    post "/playgrounds" do
        town = Town.find_by(id: params[:id]) 
        playground = town.playgrounds.create(
            name: params[:name],
            address: params[:address]
        )
        playground_to_json

    end



    private
    #@ creates private instance methods for playground
        def find_playground
        @playground = Playground.find_by_id(params["id"])
        end


        def playground_to_json
        @playground.to_json(include: [:town])
        end


 end
 