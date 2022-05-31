class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    # world = Region.all
    # world.to_json
    {hello: "World"}.to_json
  end

end
