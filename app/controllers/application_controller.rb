class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/menu_items" do
    menu_items = MenuItem.all
    menu_items.to_json
  end

  post "/menu_items" do
    menu_item = MenuItem.create(
      name: params[:name],
      price: params[:price],
      img: params[:img]
    )
    menu_item.to_json
  end

  
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  post "/reviews" do
    review = Review.create(
      content: params[:content],
      name: params[:name]
    )
    review.to_json
  end

  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(
      content: params[:content],
      name: params[:name]
    )
    review.to_json
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
  end
end
