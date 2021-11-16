class UsersController < ApplicationController

  get '/users' do
    p params
    params.to_json
  end

  get '/users/:id' do
    user = User.find_by(id: params[:id])
    if User.current(login_token: params[:login_token]) == user
      {success: true, username: user.username}.to_json
    else
      {success: false}
    end
  end

  get '/users/:id/applications' do
    # return an array
    user = User.find_by(id: params[:id])
    if User.current(login_token: params[:login_token]) == user
      user.applications.to_json
    else
      [].to_json
    end
  end

  post '/users' do
    # return a hash
    User.add_user(username: params[:username], password: params[:password]).to_json
  end

  post '/users/login' do
    # return a hash
    User.login(username: params[:username], password: params[:password]).to_json
  end

  get '/users/:id/logout' do
    user = User.find_by(id: params[:id])
    if user && User.current(login_token: params[:login_token]) == user
      user.logout.to_json
    else
      {success: false, message: 'You are not logged in as this user.'}.to_json
    end
  end
end