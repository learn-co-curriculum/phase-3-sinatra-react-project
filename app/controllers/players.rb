class PlayerController < ApplicationController

    get '/players' do
        players = Player.all.order(:rank)
        players.to_json
    end

    get '/players/:id' do
        player = Player.find(params[:id])
        player.to_json
    end

    post '/players' do
        players = Player.create(
          name: params[:name], 
          username: params[:username], 
          email: params[:email], 
          rank: params[:rank]
        )
        players.to_json
    end

end