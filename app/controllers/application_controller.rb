class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/albums' do
    album = Album.all
    album.to_json(include: :reviews)
  end

  get'/reviews' do
    review = Review.all
    review.to_json
  end
  
  get'/reviews_album/:id' do
    album = Album.find(params[:id])
    album.reviews.to_json
  end

  post'/reviews' do
    review = Review.create(comment: params["comment"], rating: params["rating"], album_id: params[:album_id])
    review.to_json
  end
  
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
  
  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(comment: params["comment"], rating: params["rating"])
    review.to_json
  end
end
