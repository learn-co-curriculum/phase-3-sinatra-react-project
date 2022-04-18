class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/games" do
    Game.all.order(:title).to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

  #get all users

  #game relationship

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  post '/game_relationships' do
    game_relatinship = GameRelationship.create(
      user: params[:user]
      game: params[:game]
      owned?: params[:owned?]
      played?: params[:played?]
      liked?: params[:liked?]
      comment: params[:comment]
    )
    game_relatinship.to_json
  end

  post '/users' do
    user = User.create(
      username: params[:username]
    )
    user.to_json
  end

  #users patch change profile picture
  #messages all show up by create table
  #messages have user_to and user_from

  #stand in for when we make game relationships editable
  #change comment
  # patch '' do
  #   game_relationship = GameRelationship.find(params[:id])
  #   game_relationship.update()
  #   game_relatinship.to_json
  # end

end
