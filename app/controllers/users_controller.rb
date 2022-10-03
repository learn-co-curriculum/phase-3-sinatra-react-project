class UsersController < ApplicationController
  set :default_content_type, 'application/json'

    #Read
    get '/users' do
      users= User.all
      users.to_json
    end

    get '/users/:id' do
      user = User.find(params[:id])
      user.to_json
    end

    #Create
    post '/users' do
      user = User.create(user_params)
    end

    #Update
    patch '/users/:id' do
      user = User.find(params[:id])
      user.update(user_params)
      user.to_json
    end

    #Delete
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      status 204
    end

    private

    def user_params
      {first_name:params[:first_name], last_name:params[:last_name], gender:params[:gender], email:params[:email], bio:params[:bio], profile_img:params[:profile_img], desired_sex:params[:desired_sex]}
    end

end