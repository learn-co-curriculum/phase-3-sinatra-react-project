class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/hello" do
    { message: "HW wuz here" }.to_json
  end

  post "/candles" do
    candle = Candle.create(name:params[:name], price:params[:price])
    candle.to_json 
  end

end
