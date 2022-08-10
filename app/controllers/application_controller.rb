class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/dogs" do
    dogs = Dog.all.order(:name)
    dogs.to_json(include: [:orders])
  end

  get "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.to_json(include: [:orders])
  end

  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.destroy
  end

  post "/dogs" do
    dog = Dog.create(name: params[:name], breed: params[:breed], age: params[:age], weight: params[:weight])
    dog.to_json
  end
  
  get "/orders" do
    orders = Order.all.order(:pickup_date)
    orders.to_json
  end

  get "/orders/:id" do
    order = Order.find(params[:id])
    order.to_json
  end

  post "/orders" do
    order = Order.create(dog_id: params[:dog_id], item: params[:item], quantity: params[:quantity], pickup_date: params[:pickup_date])
    order.to_json
  end

  patch "/orders/:id" do
    order = Order.find(params[:id])
    order.update(item: params[:item], quantity: params[:quantity], pickup_date: params[:pickup_date] )
    order.to_json
  end

  delete "/orders/:id" do
    order = Order.find(params[:id])
    order.destroy
  end

end
