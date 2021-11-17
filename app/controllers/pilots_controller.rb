class PilotsController < ApplicationController
    # route to get all customers
    get '/pilots' do
        Customer.all.to_json 
    end