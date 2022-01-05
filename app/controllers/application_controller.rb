class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/products" do
    { message: "Get products!" }.to_json
  end

  get "/products/:id" do 
    { message: "See details on one product" }.to_json
  end

  delete "/products/:id" do
    { message: "Delete a product after it has been sold" }.to_json
  end

  get "/orders" do
    { message: "See items in your shopping cart" }.to_json
  end


end
