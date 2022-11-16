class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    #Optional parameters - limit is number of restaurant objects returned. All restaurant instances divided into pages, which page with number of instances = the limit
    limit = params[:limit].to_i
    page = params[:page].to_i

    begin_index = (page - 1) * limit
    end_index = begin_index + limit

    rest_array = []
    Restaurant.all[begin_index...end_index].map do |r|
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
    complete_restaurant = restaurant
      .merge!(images: Restaurant.find(params[:id]).restaurant_images.pluck(:image_url))
      .merge!(reviews: Restaurant.find(params[:id]).reviews)
    complete_restaurant.to_json
  end

  get "/restaurant/:id/images" do
    restaurant_images = Restaurant.find(params[:id]).restaurant_images
    restaurant_images.to_json
  end

  get "/restaurant/:id/reviews" do
    restaurant_reviews = Restaurant.find(params[:id]).reviews
    restaurant_reviews.to_json
  end

  post "/restaurant/:id/reviews" do
    restaurant_review = Review.create(
      likes: params[:likes],
      dislikes: params[:dislikes],
      favorited?: params[:favorited?],
      restaurant_id: params[:restaurant_id],
      user_id: params[:user_id],
      review_detail_comment: params[:review_detail_comment]
    )
    restaurant_review.to_json
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
