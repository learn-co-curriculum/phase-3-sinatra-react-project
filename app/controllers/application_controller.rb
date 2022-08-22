class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    players = Player.all
    players.to_json
  end

  get "/:username" do
    characters = Player.find_by(username: params[:username]).characters.all
    # puts characters
    characters.to_json
  end

  

  get "/:username/:id" do
    player = Player.find_by(username: params[:username])
    character = player.characters.find(params[:id])
    character.to_json
  end


end
