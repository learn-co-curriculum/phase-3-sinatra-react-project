class UsersController < ApplicationController

    get '/users' do
        users = User.all
        users.to_json(include: :posts)
    end

end