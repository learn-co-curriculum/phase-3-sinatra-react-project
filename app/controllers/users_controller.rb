class UsersController < ApplicationController

    get '/users/home' do
      # find the current user by finding the user with the id that is stored in session[:id]
      # set that user equal to a variable, @user, so that the view found in app/views/users/home.erb can render that user
      @user = User.find(session[:id])
      erb :'/users/home'
    end
    
end