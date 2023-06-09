class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/products" do
    products = Product.all
    products.to_json

  end

  get'/products/:id' do
    product = Product.find(params[:id])
    product.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end


  post '/products/' do
    product = Product.create(
      title: params[:title],
      price: params[:price],
      description: params[:description],
      category: params[:category],
      rating: params[:rating],
      image: params[:image],
      quantity: params[:quantity]
    )
    product.to_json
  end

  patch '/products/:id' do
    product = Product.find(params[:id])
    product.update(
      image: params[:image],
      category: params[:category],
      title: params[:title],
      quantity: params[:quantity]
    )
    product.to_json
  end
  
  delete '/products/:id' do
    product = Product.find(params[:id])
    product.destroy
    product.to_json
  end

end
