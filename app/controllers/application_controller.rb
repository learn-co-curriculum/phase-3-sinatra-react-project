class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/creature" do
    @creature = Character.all 
    return @creature.to_json
    
  end

end
