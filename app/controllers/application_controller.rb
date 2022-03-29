class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add route to our Intro page here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
end
