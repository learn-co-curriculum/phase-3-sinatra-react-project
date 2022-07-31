class UsersController < ApplicationController
    

    # read all plants
    get '/users' do
        users=User.all
        users.to_json
    end
end