class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # register Sinatra::Flash
  
  configure do
    enable :sessions
    # set :session_secret, "secret"
  end

  # helpers do
  #   def logged_in?
  #      !!current_user
  #   end

  #   def current_user
  #      @current_user ||= User.find_by(id: session[:user_id])
  #   end
  # end
  
  # get "/users/:email" do
  #   user = User.find_by(email: params[:email])
  #   user.to_json(include: [:logs])
  # end


  # User Registration
  post "/users" do
    # binding.pry
    # use the data in params to create a new user and log them in by
    @user = User.create(params) #{"first_name"=>"A", "last_name"=>"A", "email"=>"A@test.com", "password"=>"Apw"}
    # setting the session[:id] equal to the user's id here
    session[:id] = @user.id
    # this redirect takes us to the route: get '/users/home' that is in the Users Controller (go and look at that route in the Users Controller.)
    # redirect '/users/home'
    @user.to_json
  end

  # User Logging In
  post "/login" do
    # binding.pry
    # find the user by email
    @user = User.find_by(params) #{"email"=>"test@test.com", "password"=>"testpw"}
    # setting the session[:id] equal to the user's id here
    session[:id] = @user.id
    # redirect "/users/#{@user.id}"
    # send the response to json
    @user.to_json(include: [:logs])
  end

end
