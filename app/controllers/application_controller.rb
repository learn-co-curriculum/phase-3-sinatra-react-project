class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/games' do
    games = Game.all.order(:title).limit(10)
    games.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    
    game.to_json(only: [:id, :title, :genre, :price], include: {
      reviews: { only: [:comment, :score], include: {
        user: { only: [:name] }
      } }
    })
  end

  delete '/games/:id' do
    game = Game.find(params[:id])
    game.destroy
    game.to_json
  end

  post '/games' do
    game = Game.create(
      name: params[:name],
      release_date: params[:release_date],
      price: params[:price],
      genre: params[:genre],
      company_id: params[:company_id]
    )
    game.to_json

  end




end
