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

  get "/score_totals" do
    score_total = ScoreTotal.all
    score_total.to_json
  end

  post "/score_totals" do
    score_total = ScoreTotal.create(
      course_name: params[:course_name],
      round_date: params[:round_date],
      score_to_par: params[:score_to_par],
      strokes: params[:strokes],
      total_putts: params[:total_putts],
      fairways_hit: params[:fairways_hit],
      round_id: params[:round_id],
    )
    score_total.to_json
  end

  

end
