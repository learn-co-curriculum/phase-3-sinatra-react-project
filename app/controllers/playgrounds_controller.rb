class PlaygroundsController < ApplicationController
    #returns all playgrounds
    get "/playgrounds" do
        Playground.all.to_json(include: [town: {only: [:id, :name]}])
    end

    get "/towns/:town_id/books"
        Town.find_by_id(params["town_id"])
    end
  
    #creates a playground using the new method in AR
    post "/playgrounds" do
        playground = Playground.new(params)
        if playground.save
            playground.to_json
        end
    end

    private
    #@ creates an instance for playground
        def find_playground
        @playground = Playground.find_by_id(params["id"])
        end


        def playground_to_json
        @playground.to_json(include: [:town])
        end


 end
 