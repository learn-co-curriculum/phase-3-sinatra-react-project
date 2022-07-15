class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/players" do
    player = Player.all
    player.to_json(inlcude: :score_totals)
  end

  get "players/:id" do
    player = Player.find(params[:id])
    player.to_json(include: :score_totals)
  end

  get "/rounds" do
    round = Round.all
    round.to_json
  end

  get "/hole_scores" do
    hole_score = HoleScore.all
    hole_score.to_json
  end

  get "/score_totals" do
    score_total = ScoreTotal.all
    score_total.to_json
  end

  post "/score_totals" do
    search = Player.find_by(username: params[:username])
    if !search
      new_player = Player.create(username: params[:username])
    else
       new_player = search
    end
    score_total = ScoreTotal.create(
      course_name: params[:course_name],
      round_date: params[:round_date],
      score_to_par: params[:score_to_par],
      strokes: params[:strokes],
      total_putts: params[:total_putts],
      fairways_hit: params[:fairways_hit],
      player_id: new_player.id,
    )
    score_total.to_json
  end

  

end
