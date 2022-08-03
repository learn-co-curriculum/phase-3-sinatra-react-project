class UsersController < ApplicationController
    # read all users
    get '/users' do
        users=User.all
        users.to_json
    end
    
    
    post '/users' do
        User.create(params).to_json
    end
end