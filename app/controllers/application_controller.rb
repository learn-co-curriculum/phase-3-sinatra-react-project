class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/characters" do
    @characters = Character.all 
    return @characters.to_json
    
  end

  get "/films" do
    @films = Film.all 
    return @films.to_json
    
  end

end
