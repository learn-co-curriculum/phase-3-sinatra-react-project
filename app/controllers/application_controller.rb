class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Routes
  get "/" do
    { group_five: "Kickbox ecommerce project", members: ["Roy", "Titus", "Angela", "Ruth"] }.to_json
  end

  get "/customers" do
    Customer.all.to_json(include: orders)
  end

  get "/products" do
    Product.all.to_json
  end

  get "/orders" do
    Order.all.to_json
  end

end
