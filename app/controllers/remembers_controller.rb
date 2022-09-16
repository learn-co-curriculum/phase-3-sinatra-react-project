require 'pry'
class RemembersController < ApplicationController

    #Read

    get '/remembers/all' do
        remembers = Remember.all
        remembers.to_json
    end

    get '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.to_json

    end 

    #Create

    post '/remembers' do
        # binding.pry
        remember = Remember.create(
          user_id: params[:user_id],
          category_id: params[:category_id],
          remember: params[:remember]
        #   timestamps: params[:timestamps]
        )
        remember.to_json
        # status 201

    end

    #Update

    patch '/remembers/:id' do
        remembers = Remember.find_by(id: params[:id])
        remembers.update(
            user_id: params[:user_id],
            category_id: params[:category_id],
            remember: params[:remember]
        )
        remembers.to_json
    end

    #Destroy
    delete '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.destroy
        remember.to_json
        status 204
    end 


end 