class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  configure do
    enable :sessions
    # set :session_secret, "secret"
  end

  helpers do
    def logged_in?
       !!current_user
    end

    def current_user
       @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  

end
