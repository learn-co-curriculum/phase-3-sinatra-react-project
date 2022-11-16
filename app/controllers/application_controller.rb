class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/hello" do
    { message: "HW wuz here" }.to_json
  end

  get "/candles" do
    candles = Candle.all
    candles.to_json(include: [:scents])
  end

  post "/candles" do
    candle = Candle.create(name:params[:name], price:params[:price], image:params[:image])
    user = User.find_by(id: params[:user_id])
    UserCandle.create(user_id: user.id, candle_id: candle.id)
    scents = params[:scents]
    scents.map do |scent|
      CandleScent.create( candle_id:candle.id, scent_id:Scent.find_by(name: scent).id )
    end
    candle.to_json
  end

  
  get "/candles/:id" do 
    candles = Candle.find(params[:id])
    candles.to_json(include: [:scents])
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

  get "/users/:username" do
    user = User.find_by(user_name: params[:username])
    if user
      user.to_json(include: { candles: { include: :scents } } )
    else
      { message: "Invalid Login" }.to_json 
    end
  end

  post "/users" do
    user = User.new(params)
    if user.user_name.blank? || user.password.blank? || User.find_by(user_name: user.user_name) || User.find_by(password: user.password)
      { message: "Invalid Username or Password" }.to_json
    else
      user.save
      user.to_json
    end 
  end

end
