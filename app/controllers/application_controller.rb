class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    rest_array = []
    Restaurant.all.map do |r|
      restaurant = r.attributes
        .merge!(likes: r.reviews.select{|r| r.likes == true}.length)
        .merge!(dislikes: r.reviews.select{|r| r.dislikes == true}.length)
        .merge!(images: r.restaurant_images.map{|url_obj| url_obj.image_url})
        .merge!(reviews: r.reviews.map{|r| r.attributes})
      rest_array << restaurant
    end
    rest_array.to_json
    
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/restaurant/:id" do
    restaurant = Restaurant.find(params[:id]).attributes
    complete_restaurant = restaurant.merge!(images: Restaurant.find(params[:id]).restaurant_images.pluck(:image_url))
    complete_restaurant.to_json
  end

  get "/restaurant/:id/images" do
    restaurant_images = Restaurant.find(params[:id]).restaurant_images
    restaurant_images.to_json
  end

  get "/users/:id" do
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
