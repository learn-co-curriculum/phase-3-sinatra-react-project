class UsersController < ApplicationController
  
    get '/users' do
      users = User.all
      users.to_json
    end
  
    get '/users/:id' do
      user = User.find(params[:id])
      user.to_json
    end
  
    post '/users' do # Make sure front end requests are nested objects similar to the nested hashes in Ruby
      user = User.new(params[:user])
      if user.save
        user.to_json
      else
        { errors: user.errors.full_messages }.to_json
      end
    end
  
    patch '/users/:id' do
      user = User.find(params[:id])
      if user && user.update(params[:user])
        user.to_json
      else
        { errors: user.errors.full_messages }.to_json
      end
    end
  
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end
  end