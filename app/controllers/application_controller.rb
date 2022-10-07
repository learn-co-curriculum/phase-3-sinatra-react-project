require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/teams' do
    teams = Team.all.limit(12)
    teams.to_json
  end
  
  get '/teams/player_name/:player_id' do
    player = Player.find(params[:player_id])
    player.to_json
  end

  patch '/teams/:id' do
    team = Team.find(params[:id])
    team.update(starter: params[:starter])
    team.to_json
  end

  get '/teams/starting_linup' do
    team = Team.where(starter:true)
    team.to_json
  end

  get '/teams/team_benched' do
    team = Team.where(starter:false)
    team.to_json
  end


end
