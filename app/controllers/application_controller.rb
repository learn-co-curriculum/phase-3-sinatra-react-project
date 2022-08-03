class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/orders" do
    orders = Order.all.order(:pickup_date)
    orders.to_json
  end

  post "/orders" do
    order = Order.create(dog: params[:dog], item: params[:item], quantity: params[:quantity], pickup_date: params[:pickup_date])
    order.to_json
  end

  patch "/orders/:id" do
    order = Order.find(params[:id])
    order.update(dog: params[:dog], item: params[:item], quantity: params[:quantity], pickup_date: params[:pickup_date] )
    order.to_json
  end

  delete "/orders/:id" do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end


end
