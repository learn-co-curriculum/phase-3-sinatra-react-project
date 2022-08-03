class UsersController < ApplicationController
    # read all users
    get '/users' do
        users=User.all
        users.to_json
    end
end