class MatchesController < ApplicationController
  set :default_content_type, 'application/json'

  get '/matches' do
    matches=Match.all
    matches.to_json
  end

    get '/matches/user/:id' do
      matches = Match.where(["user_id = ? and status = ?", params[:id], "accepted"])

      matches_data = matches.map { |match|
          match = match,
          conversation = match.messages,
          receiver = match.receiver
      }
      
      matches_data.to_json
    end
  
    get '/matches/:id' do
      match_messages = Match.find(params[:id]).messages
      match_messages.to_json
      
    end

end

