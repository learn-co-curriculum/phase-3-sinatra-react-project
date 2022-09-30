class UserController < ApplicationController
  set :default_content_type, 'application/json'

  post '/login' do
    existing_user = User.where(username: params[:username])
    return 'invalid username'.to_json if existing_user.empty?
    return 'invalid password'.to_json unless existing_user[0].password == params[:password]

    return existing_user[0].to_json
  end

  post '/signup' do
    existing_user = User.where(username: params[:username])
    return 'username already taken'.to_json unless existing_user.empty?

    user = User.create(username: params[:username], password: params[:password])
    user.initialize_session_cookie
    return user.to_json
  end
end
