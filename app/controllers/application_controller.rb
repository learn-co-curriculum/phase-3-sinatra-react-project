class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  get "/players" do
    player = Player.all
    player.to_json
  end


post "/players" do
  player= Player.create(
  player_name: params[:player_name],
  player_wins: 0,
  player_losses: 0,
  player_avatar: params[:player_avatar]
  )
player.json
end






get '/game_instance'do


game_instance = GameInstance.all
game_instance.to_json(include: :players)
end



post "/game_instance" do
  game_inatance= GameInstance.create(
 winner: params[:winner],
 loser: params[:loser]

  )
game_inatance.to_json

end









end
