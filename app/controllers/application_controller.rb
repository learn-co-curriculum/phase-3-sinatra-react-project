class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    players = Player.all
    players.to_json
  end

  get "/:id" do
    characters = Player.find(params[:id]).characters.all
    # puts characters
    characters.to_json
  end

end
