class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/characters" do
    Character.all.to_json
  end

  get "/cards" do
    Card.all.to_json
  end

  get "/play_card/:id" do
    card = Card.find(params[:id])
    card.play(player, enemy)
    characters.to_json
  end

end
