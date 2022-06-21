class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/drinks" do
    drinks = Drink.all
    drinks.to_json
  end 

  get "/users" do
    users = User.all
    users.to_json
  end 

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end


end
