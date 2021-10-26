class DeckController < ApplicationController
    get '/decks' do
        decks = Deck.all
        decks.to_json
    end
end