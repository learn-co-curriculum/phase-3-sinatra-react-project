class StatesController < ApplicationController

    get '/states' do
        State.all.to_json
    end 

    # note for search bar
    get '/states/:state_name' do
        State.find_by(state_name: params[:state_name]).parks.to_json
    end
end