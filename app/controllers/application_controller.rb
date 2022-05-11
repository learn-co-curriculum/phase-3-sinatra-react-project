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

  # Try to determine how to set up this post request to handle
  # adding an order onClick event to orders table using the data
  # from the menu item we clicked in the front end
  post "/orders" do
    Order.create()
  end

end
