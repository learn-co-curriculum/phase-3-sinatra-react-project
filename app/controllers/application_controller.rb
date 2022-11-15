class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/restaurant_images" do
    restaurant_images = RestaurantImage.all
    restaurant_images.to_json
  end

  get "/users/:id/" do
    user = User.find(params[:id])
    user.to_json
  end

  get "/users/:id/followers" do
    user_followers = User.find(params[:id]).followers
    user_followers.to_json
  end

  get "/users/:id/following" do
    user_following = Friendship.where(follower_id: params[:id]).map{|f| f.following}
    user_following.to_json
  end

end
