class PlayerController < ApplicationController

    get "/players" do
        Player.all.to_json
       end

    get "/players/:id" do
        player = Player.find(params[:id])
        player.to_json
    end
    
    post "/players" do
        player = Player.create(player_params)
        player.to_json
       end
    
    patch "players/:id" do
        player = Player.find(params[:id])
        player.update(params[:input_name])
        player.to_json
    end

    delete "players/:id" do
        player = Player.find(params[:id])
        player.destroy 
        status 204
    end

    private

def player_params
    allowed_params = %w(input_name game word)
    params.filter {|param,value| allowed_params.include?(param)}
end

end

