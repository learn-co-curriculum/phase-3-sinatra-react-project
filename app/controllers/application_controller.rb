class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

##### Example of what we may need for a player GET reques players 
#####
#####
  get "/players" do
    player = Player.all
    player.to_json
  end

##### Example of what we may need for a player POST reques players 
post "/players" do
  player= Player.create(
  player_name: params[:player_name],
  player_wins: 0,
  player_losses: 0,
  player_avatar: params[:player_avatar]
  )
player.json
end




####### Homepage----- sends info about game state and players  
#######

get '/'do 
game_instance = GameInstance.all
game_instance.to_json(include: :players)
end


###This post request updates gameinstanst as well as X and O
#### It also updates the player instance 
###As it stands now this will be the only request needed per each game 
### How this works is that after every single game this  creates a new instance of /game-instance/xes/os/ with all the required info 
### Will refactor after we know how we want everything to work


post "/" do

#This creates a new instance of Game_instance 
#
  game_instance= GameInstance.create(
 winner: params[:winner],
 loser: params[:loser]
 )

 # this creates a new instance of X's and O's
 #
 x= X.create(
  game_instance_id: game_instance.id,
  player_id: params[:x]
)

#
#
o= O.create(
  game_instance_id: game_instance.id,
  player_id: params[:o]
)

# this calls functions in the method tables 
# for each time this is run it will incrment the Player_wins/loses by 1 
# Player.find_by_id(winner).add_wins
# Player.find_by_id(loser).add_loses

game_instance.to_json

x.to_json
o.to_json
end











end
