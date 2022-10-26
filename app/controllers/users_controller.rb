class UsersController < ApplicationController

    #get username based on user id: run fetch from front end to access user instance
    get '/api/users/user-id/:id' do
        user_id = params[:id].to_i
        user = User.all.find_by(id: user_id) #returns user instance from user_id
        user.to_json
    end

    #get all users
    get '/api/users' do
        all_users = User.all
        all_users.to_json
    end

    #post create new user
    post '/api/users/:username' do
        new_user = User.create(params)
        new_user.to_json
    end

end