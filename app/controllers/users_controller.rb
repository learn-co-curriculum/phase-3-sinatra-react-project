class UsersController < ApplicationController

    get '/users' do
        users = User.all
        users.to_json
    end

    get '/users/:id' do
        user = User.find(params[:id])
        user.to_json
    end
end
