class FridgesController < ApplicationController

get '/fridges' do 
    fridges = Fridge.all

    fridges.to_json(
        include: :foods
    )
end

post '/fridges' do
    newFridge = Fridge.create(
        location: params[:location],
    )
    newFridge.to_json(
        include: :foods
    )
end





end