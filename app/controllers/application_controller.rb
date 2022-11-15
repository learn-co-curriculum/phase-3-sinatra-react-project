require 'awesome_print'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Stock.rufus
    { message: "Good luck with your project!" }.to_json
  end


  get "/users/:user_name" do
    # binding.pry
    User.find_by(user_name: params[:user_name]).to_json
  end


  get "/users" do
    User.all.to_json
  end

  

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  get "/stocks" do
    Stock.all.to_json(include:{stock_prices:{only:[:current_price]}})
  end

  get "/users/:user_name/watchlist" do
    User.find_by(user_name: params[:user_name]).watchlist.stocks.to_json(include:{stock_prices:{only:[:current_price]}})
  end



end
