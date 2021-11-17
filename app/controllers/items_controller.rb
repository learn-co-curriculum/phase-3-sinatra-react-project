class ItemController < ApplicationController
  
    get '/items' do
      binding.pry
      items =  Item.all
      items.to_json
    end

    get '/items/:id' do
      vintage = Item.find(params[:id])
      vintage.to_json
    end 

    delete '/items/:id' do
      vintage = Item.find(params[:id])
      vintage.destroy
    end
end