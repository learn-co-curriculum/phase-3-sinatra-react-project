class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Routes
  get "/" do
    { group_five: "Kickbox ecommerce project", members: ["Roy", "Titus", "Angela", "Ruth"] }.to_json
  end

  get "/customers" do
    Customer.all.to_json
  end

  get "/customers/:id" do
    Customer.where(id: params["id"]).first.to_json
  end

  get "/products" do
    Product.all.to_json
  end

  get "/products/:id" do
    Product.where(id: params["id"]).first.to_json
  end

  get "/orders" do
    Order.all.to_json
  end

  get "/orders/:id" do
    Order.where(id: params["id"]).first.to_json
  end

  get "/order_details" do
    OrderDetail.all.to_json
  end

  get "/order_details/:id" do
    OrderDetail.where(id: params["id"]).first.to_json
  end

end
