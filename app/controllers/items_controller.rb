class ItemController < ApplicationController
  
    get '/items' do
      items =  Item.all
      items.to_json
    end

    get '/items/:id' do
      vintage = Item.find(params[:id])
      vintage.to_json
    end 
end