class PilotsController < ApplicationController
    # route to get all customers
    get '/pilots' do
        Pilot.all.to_json 
    end
end