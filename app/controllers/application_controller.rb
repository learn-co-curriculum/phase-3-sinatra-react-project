class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/albums' do
    album = Album.all
    album.to_json
  end

  get'/reviews' do
    review = Review.all
    review.to_json
  end

  get'/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end
  
  get'/reviews_album/:id' do
    album = Album.find(params[:id])
    album.reviews.to_json
  end

  post'/reviews' do
    data = JSON.parse(request.body.read)
    review = Review.create(comment: data["comment"], rating: data["rating"])
    review.to_json
  end
  
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
    
  patch '/reviews/:id' do
    data = JSON.parse(request.body.read)
    review = Review.find(params[:id])
    review.update(comment: data["comment"], rating: data["rating"])
    review.to_json
  end
  # the information in the body of my request isnt even showing up in the params hash

end
