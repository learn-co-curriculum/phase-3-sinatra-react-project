class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    enable :sessions
    # set :session_secret, "secret"
  end
  
  # Add your routes here
  get "/" do
    { message: "Best choice for project management!" }.to_json
  end



end
