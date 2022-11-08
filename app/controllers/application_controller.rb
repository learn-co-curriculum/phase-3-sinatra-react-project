class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do
    response.headers['Access-Control-Allow-Origin'] = "*"
  end

  #enable CORS prefLight requests
  options "*" do
    response.headers['Access-Control-Allow-Method'] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
  end
  
  # Add your routes here
  get "/" do
    { message: "Am Lucky to have a code that works on first instance" }.to_json
  end

  get "/api/users" do
    { message: "performing user fetch request here" }.to_json
  end


end
