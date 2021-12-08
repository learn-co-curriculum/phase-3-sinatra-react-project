class MoviesController < ApplicationController
    
  get "/movies" do
    movies = Movie.all
    movies.to_json
  end

  get "/movies/:id" do 
    movie = Movie.find(params[:id])
    movie.to_json(include: :reviews)
  end

  get "/movies/:id/reviews" do 
    movie = Movie.find(params[:id]).reviews
    movie.to_json
  end

  post '/movies/:id/reviews' do
    review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      movie_id: params[:movie_id],
      user_id: params[:user_id]
    )
    review.to_json
  end
  patch '/movies/:id/reviews' do 
    review = Review.find(params[:id])
    review.update(
      comment: params[:comment],
      rating: params[:rating]
    )
    review.to_json
  end

  delete "/movies/:id/reviews" do
    review = Review.find(params[:id])
    review.destroy
    {message:'review destroyed'}.to_json
  end
end