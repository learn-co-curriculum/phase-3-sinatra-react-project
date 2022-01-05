class OrderItemsController < ApplicationController

    get '/order_items' do
        items = OrderItem.all
        items.to_json(include: :product)
      end

    
    delete '/order_items/:id' do
        item = OrderItem.find(params[:id])
        item.destroy
        {message: 'item deleted'}.to_json
      end

    
end