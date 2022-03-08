class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/buildings" do
    buildings = Building.all
    buildings.to_json
  end

end
