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
    post '/items' do 
        new_item = Item.create(name: params[:name])
        status 201
        new_item.to_json 
    end

    #update
    patch '/items/:id' do 
        item = Item.find(params[:id])
        item.update(name: params[:name])
        item.to_json
    end

    #destroy
    delete '/items/:id' do 
        item = Item.find(params[:id])
        item.destroy
        status 204  
    end
end