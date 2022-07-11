class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    restaurants = Restaurant.all.order(:name)
    restaurants.to_json(include: :ratings)
  end

  get"/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

  get"/restaurants/:id/menu" do
    menu = Restaurant.find(params[:id]).menu_items
    menu.to_json(include: :item)
  end


end
