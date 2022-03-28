class FridgesController < ApplicationController

get '/fridges' do 
    fridges = Fridge.all

    fridges.to_json(
        include: :foods
    )
end






end