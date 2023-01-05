require 'pry'
class UnitsControllers < ApplicationController

    #CRUD

    #read
    get '/units' do
        Unit.all.to_json
    end

    get '/units/:id' do
        units = Unit.find(params[:id])
        units.to_json
    end

    #create
    post '/units' do
        units = Unit.create(params)
        # units.owner = current_user  see app controller
        units.to_json
    end

    #update
    patch '/units/:id' do
        units = Unit.find(params[:id])
        units.update(address: params[:address], current_tenant: params[:current_tenant], open_request?: params[:open_request?])

        units.to_json
    end

    #delete
    delete '/units/:id' do 
        units = Unit.find(params[:id])
        units.destroy
    end

#
end