class CardController < ApplicationController
    get '/cards' do
        cards = Card.all
        cards.to_json
    end

    get '/cards/:id' do
        card = Card.find(params[:id])
        card.to_json
    end
end