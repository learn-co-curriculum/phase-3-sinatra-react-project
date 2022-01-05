class OrderController < ApplicationController


    get '/orders' do
        orders = Order.all
        orders.to_json
    end


end