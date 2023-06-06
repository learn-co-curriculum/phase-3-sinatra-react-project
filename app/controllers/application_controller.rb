class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/messages" do
    message = messages.all
     messages.to_json
  end

  get "/users" do
    user = users.all
    users.to_json

end
