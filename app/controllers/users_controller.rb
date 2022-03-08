class UsersController < ApplicationController

    get '/users' do
        users = User.all
        users.to_json(include: { comments: { include: :posts } })

    end

end