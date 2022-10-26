class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/users' do
    users2 = User.all
    users2.to_json
  end

  get '/reviews' do
    reviews2 = Review.all
    reviews2.to_json
  end

  get '/restaurants' do
    restaurants2 = Restaurant.all
    restaurants2.to_json
  end
  
  

end
