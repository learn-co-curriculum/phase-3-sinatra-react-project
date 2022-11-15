class PlaygroundsController < ApplicationController
    get "/playgrounds" do
        Playground.all.to_json
    end
  
    post "/playgrounds" do
        playground = Playground.new(params)
        if playground.save
            playground.to_json
        end
        end

 end
 