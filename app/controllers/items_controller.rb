class ItemController < ApplicationController
  
    get '/items' do
      
      items =  Item.all
      items.to_json
    end

    get '/items/:id' do
      vintage = Item.find(params[:id])
      vintage.to_json
    end 

    post '/items' do
      item = Item.create(
        name: params[:name],
        price: params[:price],
        product_description: params[:product_description],
        imgUrl: params[:imgUrl],
        user_id: params[:user_id]
      )
      item.to_json
    end

    delete '/items/:id' do
      vintage = Item.find(params[:id])
      vintage.destroy
    end
end
