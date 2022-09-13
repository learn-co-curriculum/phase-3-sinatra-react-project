class ItemsController < ApplicationController
    #read
    get '/items' do 
        items = Item.all
        items.to_json
    end

    get '/items/:id' do 
        item = Item.find(params[:id])
        item.to_json
    end
    #create
    #update
    #destroy
end