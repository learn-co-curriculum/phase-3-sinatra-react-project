class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    enable :sessions
    # set :session_secret, "secret"
  end
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end



end
