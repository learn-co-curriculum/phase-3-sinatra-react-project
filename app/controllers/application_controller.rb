class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  


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






get '/'do 
game_instance = GameInstance.all
game_instance.to_json
end



post "/" do



  game_instance= GameInstance.create(
 winner: params[:winner],
 loser: params[:loser]
 )
 
 binding.pry
 
 game_instance.to_json

 
 binding.pry
 
 x= X.create(
  game_instance_id: game_instance.id,
  player_id: params[:x]
)
o= O.create(
  game_instance_id: game_instance.id,
  player_id: params[:o]
)

x.to_json
o.to_json

end











end
