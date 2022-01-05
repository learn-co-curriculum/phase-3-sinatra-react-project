class OrderItemsController < ApplicationController

    get '/order_items' do
        items = OrderItem.all
        items.to_json(include: :product)
    end


      get '/order_items/:id' do
        OrderItem.find(params[:id]).to_json
    end

    delete '/order_items/:id' do
        item = OrderItem.find(params[:id])
        item.destroy
        {message: 'item deleted'}.to_json
    end


    post '/order_items' do
        OrderItem.create_order
    end


end

