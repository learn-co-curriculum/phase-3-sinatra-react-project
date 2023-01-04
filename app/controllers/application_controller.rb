class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get '/foods' do 
    foods = Food.all 
    foods.to_json
  end
  post '/foods'do
   food = Food.create(
    body: params[:body],
    username: params[:username]
   )
   message.to_json
  end
  patch '/foods/:id' do
    food = Food.find(params[:id])
    food.update( body: params[:body] )
    food.to_json
  end
  delete '/foods/:id' do 
    food = Food.find(params[:id])
    food.destroy
    food.to_json
  end
end
