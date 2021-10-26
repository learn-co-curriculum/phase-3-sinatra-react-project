class DeckController < ApplicationController
    get '/decks' do
        decks = Deck.all
        decks.to_json
    end

    get '/decks/:id' do
        deck = Deck.find(params[:id])
        deck.to_json
    end

    post '/decks' do
        new_deck = Deck.create(name: params[:name], user_id: params[:user_id])
        new_deck.to_json
    end

    delete '/decks/:id' do
        deck = Deck.find(params[:id])
        deck.destroy
    end
end