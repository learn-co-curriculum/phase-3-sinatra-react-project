class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/characters" do
    characters = Character.all
    characters.to_json
  end

end
