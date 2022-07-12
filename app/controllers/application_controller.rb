class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
#Read list of restaurants to order from
  get "/restaurants" do
    restaurants = Restaurant.serialize_restaurants
    restaurants.to_json
  end

# Read details of a specific restaurant (probably not going to be needed)
  get "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

#Read all menu items for a specific restaurant
  get "/restaurants/:id/menu" do
    menu = Restaurant.find(params[:id]).menu_items
    menu.to_json(include: :item)
  end

#Create a new order
  post "/orders/new" do
    new_order  = Order.create(completed?: 0, restaurant_id: params[:restaurant_id])
    new_order.to_json
  end

# #Create a new ordered_item. When using this endpoint you need to specify the order_id and menu_item_id
  post "/items/new" do
    new_item  = OrderedItem.create(order_id: params[:order_id], menu_item_id: params[:menu_item_id], quantity: 1)
    new_item.to_json
  end

#Update quantity for a specific item
  patch "/orders/:order_id/ordered_item/:item_id/update_quantity" do
  item = OrderedItem.find(params[:item_id])
  item.update(quantity: params[:quantity])
  item.to_json
  end

#Update an order (mark as completed)
  patch "/orders/:order_id/complete" do
  order = Order.find(params[:order_id])
  order.update(completed?: 1)
  order.to_json
  end

#Delete an item in the cart
  delete "/orders/:order_id/ordered_item/:item_id/delete" do
    item = OrderedItem.find(params[:item_id])
    item.destroy
    item.to_json
  end

#Delete a specific order and all items in the order
  delete "/orders/:order_id/delete" do
    order = Order.find(params[:order_id])
    order.ordered_items.destroy_all
    order.destroy
    order.to_json
  end

end
