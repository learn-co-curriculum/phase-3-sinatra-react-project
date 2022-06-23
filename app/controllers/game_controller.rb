class GameController < ApplicationController

    get "/games" do
        Game.all.to_json
       end

    get "/games/:id" do
        game = Game.find(params[:id])
        game.to_json
    end
    
    post "/games" do
        game = Game.create(game_params)
        game.to_json
       end

       private

def game_params
    allowed_params = %w(player word)
    params.filter {|param,value| allowed_params.include?(param)}
end

end