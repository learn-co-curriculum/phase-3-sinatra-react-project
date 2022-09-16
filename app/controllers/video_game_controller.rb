class VideoGameController < ApplicationController

    get '/video_games' do
        video_games = VideoGame.all.order(:title)
        video_games.to_json(include: :players)
    end
    
    get '/video_games/:id' do
        video_game = VideoGame.find(params[:id])
        video_game.to_json(include: :players)
    end
    
    post '/video_games' do
        video_games = VideoGame.create(
          title: params[:title], 
          company_game_was_made_by: params[:company_game_was_made_by], 
          rating: params[:rating], 
          image: params[:image]
        )
        video_games.to_json
    end
    
    delete '/video_games/:id' do
        video_game = VideoGame.find(params[:id])
        video_game.destroy
        video_game.to_json
    end

end