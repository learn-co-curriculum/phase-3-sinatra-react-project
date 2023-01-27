class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  patch "/games/:id" do
    game = Game.find(params[:id])
    game.update(difficulty: params[:difficulty])
    game.to_json
  end
  get "/games/:id" do
    game = Game.find(params[:id])
    game.update(difficulty: params[:difficulty])
    game.to_json
  end

  get "/" do
    sets = Cardset.all.order(:timestamp)
    sets.to_json
  end

  post "/" do
    set = Cardset.create(card_id: 6, user_id: 1, title: params[:title] )
    set.to_json
  end

  get "/card" do
    cards = Card.all
    cards.to_json
  end

  post "/card" do
    new_card = Card.create(
      question: params[:question], 
      answer: "idk", 
      hint: "idk", 
      description: "idk", 
      cardset_id: params[:cardset_id])
    new_card.to_json
  end

  delete "/card/:id" do
    deletedCard = Card.find_by(id: params[:id])
    deletedCard.destroy
    {status: "success"}.to_json
  end

  delete "/cardset/:id" do
    set = Cardset.find_by(id: params[:id])
    set.destroy
    {status: "success"}.to_json
  end

  get "/games" do
    games = Game.all
    games.to_json
  end
  
  get "/games/423423/:id" do
    cards = Cardset.find(params[:id])
    cards.cards.to_json
  end

  get "/games/:id" do
    game = Game.find_by(user_id: params[:user_id], cardset_id: params[:cardset_id])
    game.to_json
  end
  post "/games" do
    game = Game.create(user_id: params[:user_id], cardset_id: params[:cardset_id], difficulty: params[:difficulty], date: Time.now, score: 0)
    game.to_json
  end


end
