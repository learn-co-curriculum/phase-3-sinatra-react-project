class CurrentUsersController < ApplicationController
  set :default_content_type, 'application/json'

    get '/current-user' do
        CurrentUser.last.to_json
    end
    
    post '/current-user' do
        CurrentUser.destroy_all
        CurrentUser.create(current_user_params)
        CurrentUser.first.to_json
    end

    private

    def current_user_params
      {username:params[:username], password:params[:password], email:params[:email]}
    end
end

