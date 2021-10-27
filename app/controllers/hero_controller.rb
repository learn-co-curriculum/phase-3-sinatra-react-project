class HeroController < ApplicationController
    get '/heros' do
        cards = Card.all
        cards.to_json
    end
end