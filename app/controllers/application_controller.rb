class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here #http://localhost:9292/games/
  get "/bubbleteas" do
    bubbleteas = Bubbletea.all
    bubbleteas.to_json
    # {message: 'hi'}.to_json
  end

  get "/bubbleteas/:id" do
    bubbleteas = Bubbletea.find(params[:id])
    bubbleteas.to_json
  end
  
  get '/customers' do
    customers = Customer.all
    customers.to_json
  end
  post '/customers' do
    customer = Customer.create(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      address: params[:address]
    )
    customer.to_json
  end

  delete '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.destroy
    customer.to_json
  end

  get '/orders' do
    orders = Order.all
    orders.to_json
  end

  get '/orders/customer_id' do
    orders = Order.where(customer_id: params[:customer_id])
    orders.to_json
  end

  post '/orders' do
    order = Order.create(
    price: params[:price],
    customer_id: params[:customer_id],
    bubbletea_id: params[:bubbletea_id],
    size: params[:size],
    comment: params[:comment]
    )
    order.to_json
  end

  delete '/orders/:id' do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end
end
# get "/bubleteas/:id" do
#   bubbleteas = Bubbletea.find(params[:id])
#   bubbleteas.to_json
# end

#1 get render all the info in bubbleteas
#2 Post Order form : inputs => Base,Topping1,Topping2,size(select) Button submit (fetch Bubbletea - Fetch Order)
#3 Update Order form button - Pop up Delete button
#4Navbar should show in all the pages

