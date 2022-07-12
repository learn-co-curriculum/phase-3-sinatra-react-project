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

  get "/rounds" do
    round = Round.all
    round.to_json
  end

  get "/hole_scores" do
    hole_score = HoleScore.all
    hole_score.to_json
  end

end
