class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/albums' do
    album = Album.all
    album.to_json
  end

  get '/users' do
    user = User.all
    user.to_json
  end

  get'/reviews' do
    review = Review.all
    review.to_json
  end

end
