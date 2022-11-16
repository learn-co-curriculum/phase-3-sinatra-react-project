class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/home" do
    { message: "Welcome to the homepage. Endpoints are as follows:" }.to_json
  end

end
