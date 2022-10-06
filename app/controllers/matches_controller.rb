class MatchesController < ApplicationController
  set :default_content_type, 'application/json'

    get '/matches/user/:id' do
      matches = Match.where(["user_id = ? and status = ?", params[:id], "accepted"])

      matches_data = matches.map { |match|
          match = match,
          conversation = match.messages,
          receiver = match.receiver
      }
      
      matches_data.to_json
    end
  

end

