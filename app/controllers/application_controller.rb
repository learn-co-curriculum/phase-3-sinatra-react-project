class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to our API, This is the API we made for our Phase 3 project
      The movies and shows thats in this API are just a random movies and shows that we added" }.to_json
  end
end
