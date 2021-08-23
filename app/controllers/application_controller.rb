class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
end
