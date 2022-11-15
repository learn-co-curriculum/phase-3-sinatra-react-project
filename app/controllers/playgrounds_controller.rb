class PlaygroundsController < ApplicationController
    #returns all playgrounds
    get "/playgrounds" do
        Playground.all.to_json
    end
  
    #creates a playground
    post "/playgrounds" do
        playground = Playground.new(params)
        if playground.save
            playground.to_json
        end
        end

 end
 