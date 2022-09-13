class GamesController < ApplicationController

    get "/games" do 
        games = Game.all
        games.to_json
    end
    
    get "/games/:id" do
        game = Game.find(params[:id])
        game.to_json
    end
    
    post "/games" do
        new_Game = Game.create(score:params[:score], user_id:params[:user_id])
        status 201
        new_Game.to_json
    end

    patch "/games/:id" do
        game = Game.find(params[:id])
        game.update(score:params[:score])
        game.to_json
    end

    delete "/games/:id" do
        old_Game = Game.find(params[:id])
        old_Game.destroy
        status 204
    end

end