class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to Sprout and Spruce's Shelter, currently under construction" }.to_json
  end

end
