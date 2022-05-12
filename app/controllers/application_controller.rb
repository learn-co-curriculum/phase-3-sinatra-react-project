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

  get "/orders" do 
    order = Order.all
    order.to_json
  end

  post "/reviews" do
    new_review = Review.create(params)
    new_review.to_json
  end

  post "/orders" do
    new_order = Order.create(params)
    new_order.to_json
  end

  delete "/orders/:id" do 
    deleted_order = Order.find(params[:id])
    deleted_order.destroy
    deleted_order.to_json
  end

  private

  # def order_params
  #   allowed_params = %w(name price)
  #   #params.select {|param,value| allowed_params.include?(param)}
  # end

end
