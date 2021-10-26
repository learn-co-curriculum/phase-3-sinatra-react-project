class CardDeckController < ApplicationController

    post '/card_decks' do
        card_deck = CardDeck.create(deck_id: params[:deck_id], card_id: params[:card_id])
        card_deck.to_json
    end

    delete '/card_decks/:id' do
        card_deck = CardDeck.find(params[:id])
        card_deck.destroy
    end
end