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

  get "/carts" do
    carts = Cart.all
    carts.to_json
  end

  patch '/products/:id' do
    product = Product.find(params[:id])
    product.update(
      image: params[:image],
      category: params[:category],
      title: params[:title]
    )
    product.to_json
  end
  
end

# patch '/reviews/:id' do
#   review = Review.find(params[:id])
#   review.update(
#     score: params[:score],
#     comment: params[:comment]
#   )
#   review.to_json
# end

# delete '/reviews/:id' do
#   review = Review.find(params[:id])
#   review.destroy
#   review.to_json
# end

# post '/reviews' do
#   review = Review.create(
#     score: params[:score],
#     comment: params[:comment],
#     game_id: params[:game_id],
#     user_id: params[:user_id],
#   )
#   review.to_json
# end