require 'awesome_print'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do 
    response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
  end
  
  # Add your routes here
  get "/" do
    Stock.rufus
    { message: "Good luck with your project!" }.to_json
  end

  get "/users/:user_name" do
    User.find_by(user_name: params[:user_name]).to_json
  end

  get "/users/:user_name/userstocks_joins" do
    # User.find_by(user_name: params[:user_name]).to_json(include: {userstocks_joins: {only: [:id, :user_id, :stock_id]}, stocks: {only: [:id, :ticker]}})
    User.find_by(user_name: params[:user_name]).portfolio.to_json
    # binding.pry
  end

  get "/users/:id" do
    User.find(params[:id]).to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/stocks" do
    Stock.all.to_json(include:{stock_price:{only:[:price,:change_percentage,:change_point,:total_vol]}})
    # binding.pry
  end

  get "/top_movers_by_points" do
    Stock.joins(:stock_price).order("ABS(change_point) DESC").to_json(include:{stock_price:{only:[:price,:change_percentage,:change_point,:total_vol]}})
  end

  get "/users/:user_name/watchlist" do
    User.find_by(user_name: params[:user_name]).watchlist.stocks.uniq.to_json(include:{stock_price:{only:[:price]}})
  end

  get '/stocks/:query' do
    Stock.where("ticker LIKE ?", "%#{params[:query].upcase}%").to_json(include:{stock_price:{only:[:price]}})
    # Stock.find_by(ticker: params[:query].upcase).to_json(include:{stock_price:{only:[:price]}})
  end

  delete "/users/:user_name/watchlist/stocks/:id" do 
    User.find_by(user_name: params[:user_name]).watchlist.stocks.where(id: params[:id].to_i).to_json(include:{stock_price:{only:[:price]}})
    # binding.pry
    user_id = User.find_by(user_name: params[:user_name]).id
    stockToDelete = WatchstocksJoin.find_by watchlist_id: user_id, stock_id: params[:id]
    stockToDelete.destroy
    stockToDelete.to_json
  end

  post "/users/:user_name/watchlist/addstock/:id" do
    # User.find_by(user_name: params[:user_name]).watchlist.stocks.to_json(include:{stock_price:{only:[:price]}})
    user_id = User.find_by(user_name: params[:user_name]).id
    stock_id = Stock.find_by(id: params[:id]).id
    stockToPost = WatchstocksJoin.create(watchlist_id: user_id, stock_id: stock_id )
    # binding.pry
  end
#========================================================
#Update user's balance
  patch "/users/:user_name" do
    # binding.pry
    User.find_by(user_name: params[:user_name]).update(balance: params[:balance])
    User.find_by(user_name: params[:user_name]).to_json
    
  end

#Add stocks to user
  # post "/userstocks_joins" do
  #   binding.pry
  # end
  post "/users/:user_name/userstocks_joins" do
    # binding.pry
    UserstocksJoin.create(user_id: params[:user_id], stock_id: params[:stock_id])
    User.find(params[:user_id])
  end

#Delete stocks from user
  delete "/users/:id/userstocks_joins" do
    # binding.pry
  end

  
end
