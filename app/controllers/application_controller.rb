class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/hello" do
    { message: "HW wuz here" }.to_json
  end

  get "/candles" do
    candles = Candle.all
    candles.to_json
  end

  post "/candles" do
    candle = Candle.create(name:params[:name], price:params[:price], image:params[:image]) 
    scents = params[:scents]
    binding.pry
    scents.map do |scent|
      CandleScent.create( candle_id:candle.id, scent_id:Scent.find_by(name: scent).id )
    end
    candle.to_json
  end

  
  get "/candles/:id" do 
    candles = Candle.find(params[:id])
    candles.to_json
  end

  delete "/candles/:id" do 
    deleted_candle = Candle.find(params[:id])
    CandleScent.where(candle_id: params[:id]).destroy 
    deleted_candle.destroy
    deleted_candle.to_json
  end

   get "/scents" do
    scents = Scent.all
    scents.to_json

   end


end
