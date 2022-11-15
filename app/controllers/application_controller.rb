
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #user crud methods
  get "/users" do
    User.all.to_json(include: {reviews: {include: :movie}})
  end
  
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(include: {reviews: {include: :movie}})
  end
  
  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy_all
    user.to_json
  end

  post "/users" do
    user = User.create(
      username: params[:username]
    )
    user.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id]).update(
      username: params[:username]
    )
    user.to_json
  end

  #movie get methods
  get "/movies" do
    Movie.all.to_json(include: {reviews: {include: :user}})
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json(include: {reviews: {include: :user}})
  end
  #we dont need delete/post/patch methods for movies

  #review get methods
  get "/reviews" do
    Review.all.to_json()
  end

  get "/review/:id" do 
    review = Review.find(params[:id])
    review.to_json
  end

  delete "/review/:id" do
    review = Review.find(params[:id])
    review.destroy_all
    review.to_json
  end

  post "/review" do
    review = Review.create(
      review: params[:review],
      rating: params[:rating],
      user_id: params[:user_id],
      movie_id: params[:movie_id]
    )
    review.to_json
  end

  patch "/review/:id" do
    review = Review.find(params[:id]).update(
      review: params[:review],
      rating: params[:rating],
      user_id: params[:user_id],
      movie_id: params[:movie_id]
    )
    review.to_json
  end
  
end
