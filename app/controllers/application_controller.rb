class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
  User.all
  end
  patch "/games/:id" do
    game = Game.find(params[:id])
    game.update(difficulty: params[:difficulty])
    game.to_json
  end
end
