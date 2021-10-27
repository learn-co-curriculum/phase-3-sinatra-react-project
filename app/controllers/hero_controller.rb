class HeroController < ApplicationController
    get '/heros' do
        heros = Hero.all
        heros.to_json
    end
end