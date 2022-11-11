class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { group_five: "Kickbox ecommerce project", members: ["Roy", "Titus", "Angela", "Ruth"] }.to_json
  end
  
  # Customer Routes
  get "/customers" do
    Customer.all.to_json
  end

  get "/customers/:id" do
    Customer.where(id: params["id"]).first.to_json
  end

  # Product Routes
  get "/products" do
    Product.all.to_json(include: :reviews)
  end

  get "/products/:id" do
    Product.where(id: params["id"]).first.to_json(include: :reviews)
  end

  # Order Routes
  get "/orders" do
    Order.all.to_json
  end

  get "/orders/:id" do
    Order.where(id: params["id"]).first.to_json
  end

  # Order Detail Routes
  get "/order_details" do
    OrderDetail.all.to_json
  end

  get "/order_details/:id" do
    OrderDetail.where(id: params["id"]).first.to_json
  end

  # Review Routes
  get "/reviews" do
    Review.all.to_json
  end

  get "/reviews/:id" do
    Review.where(id: params["id"]).first.to_json
  end

  post "/reviews" do
    review = Review.new(params)

    if review.save
      review.to_json
    else
      halt 422
    end
  end

  delete "/reviews/:id" do
    review = Review.where(id: params["id"]).first

    if review.destroy
      { success: "Record Deleted Successfully!" }.to_json
    else
      halt 500
    end
  end

end
