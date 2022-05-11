class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/reviews" do 
    reviews = Review.all
    reviews.to_json
  end
  
  get "/menu_items" do 
    menu_item = MenuItem.all
    menu_item.to_json
  end

  get "/customers" do 
    customer = Customer.all
    customer.to_json
  end

  
  # post "/reviews" do
  #   Review.create()
  # end
  
  # post "/orders" do
  #   Order.create()
  # end

end
