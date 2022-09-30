class UserController < ApplicationController
  set :default_content_type, 'application/json'

  post '/users' do
    name = params[:username]
    existing_user = User.where("username = '#{name}'")
    if existing_user.empty?
      user = User.create(username: name, password: params[:password])
      user.initialize_session_cookie

      return user.to_json
    else
      existing_user.to_json
    end
  end
end
