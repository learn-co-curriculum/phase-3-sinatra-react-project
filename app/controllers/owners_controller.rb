require 'pry'
class OwnersControllers < ApplicationController

    #read
    get '/owners' do
        Owner.all.to_json
    end

    get '/owners/:id' do
        owners = Owner.find(params[:id])
        owners.to_json
    end

    #create
    post '/owners' do
        owners = Owner.create(params)
        owners.to_json
    end

    #update
    patch '/owners/:id' do 
        owners = Owner.find(params[:id])
        owners.update(name: params[:name], total_units_owned: params[:total_units_owned])
        owners.to_json
    end

    #delete
    delete '/owners/:id' do
        owners = Owner.find(params[:id])
        owners.destroy
    end








#
end