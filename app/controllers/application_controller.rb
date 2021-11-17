class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
#####
### Backend is currently set up to run as follows 
### GET requests..... doesn't matter should work whenever
### When someone makes a new  this sends a post request to the database  to make a new player  --------- 
### WHEN a game starts a POST request is created----- currently 1 post request------ this then makes a new line in the game_instance table(that is blank) and a new line_ in the xes and os table 

### this one can be improved
###WHEN a game finishes ----- three patch requests ---- one will send to the game instance table and let us know who won. and who lost.----- 
#####two  will go to the players table and update total wins/loses for both players 
###  
#########


##### Example of what we may need for a player GET reques players 
#####
#####
  get "/players" do
    player = Player.all
    
    player.to_json
  end

##### Example of what we may need for a player POST reques players 
##### DATA that needs to be sent ---- player name and avatar
post "/players" do
  player= Player.create(
  player_name: params[:player_name],
  player_wins: 0,
  player_losses: 0,
  player_avatar: params[:playerAvatar]
  )

player.to_json
end


######## Update total win/lose counts 
####### This should run after a player loses or wins 
patch "/players/:id" do 

player = Player.find(params[:id])

player.add_wins  

binding.pry

player.to_json
end





####### ends info about game state and players  
#######

get '/game_instances'do 
game_instance = GameInstance.all
game_instance.to_json
end


####### Post request for when a game_instance is created 
####### This should be made as soon a game is created 
####### Currently also creates x's and o's to keep down on the number of fetch requests we need
post "/game_instances" do 
########This creates a new instance of Game_instance 

 game_instance= GameInstance.create(
  winner: nil,
  loser: nil
 )


 x= X.create(
  game_instance_id: game_instance.id,
  player_id: params[:x]
 )

 o= O.create(
  game_instance_id: game_instance.id,
  player_id: params[:o]
)

####### find a way to include all 
o.to_json
x.to_json
game_instance.to_json
end


########## Patch request 
############# THIS SHOULD RUN AFTER A GAME IS COMPLETED 
########## THis will update the game instance to reflect who won/lost the game 
########## This will done at the end of every game 
######### WINNER?LOSER params are expected to id's but it can be whatever
patch "/game_instances/:id" do 
game_instance = GameInstance.find(params[:id])
game_instance.update(
  winner: params[:winner],
  loser: params[:loser]
)
game_instance.to_json
end











################ OLD CODE 


######this creates a new instance of X's and O's
###### These patchs should be run at the start of every new game 
###### If users have multiple runs we may not need to do this at every game but atm we will 
###### May want to handle this wih the game instance post 
# post "/xes" do 

#   x= X.create(
#     game_instance_id: game_instance.id,
#     player_id: params[:x]
#    )
#    x.to_json
# end


# post '/os' do
# o= O.create(
#   game_instance_id: game_instance.id,
#   player_id: params[:o]
# )
# o.to_json
# end 












####################### below is old method 
###This post request updates gameinstanst as well as X and O
#### It also updates the player instance 
###As it stands now this will be the only request needed per each game 
### How this works is that after every single game this  creates a new instance of /game-instance/xes/os/ with all the required info 
### Will refactor after we know how we want everything to work
# post "/" do

#This creates a new instance of Game_instance 
#
#   game_instance= GameInstance.create(
#  winner: params[:winner],
#  loser: params[:loser]
#  )

 # this creates a new instance of X's and O's
 
#  x= X.create(
#   game_instance_id: game_instance.id,
#   player_id: params[:x]
# )


# o= O.create(
#   game_instance_id: game_instance.id,
#   player_id: params[:o]
# )

# this calls functions in the method tables 
# for each time this is run it will incrment the Player_wins/loses by 1 
# Player.find_by_id(winner).add_wins
# Player.find_by_id(loser).add_loses

# game_instance.to_json

# x.to_json
# o.to_json
# end
###### ABOVE IS OLD METHOD 
#######




end
