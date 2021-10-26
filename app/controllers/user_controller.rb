class UserController < ApplicationController

    post '/users' do
        new_user = User.create(name: params[:name])
        new_user.to_json
    end
end