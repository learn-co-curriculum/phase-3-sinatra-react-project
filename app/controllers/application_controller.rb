class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/cars" do
    car = Car.all
    car.to_json
  end
  get '/cars/:id' do 
    car = Car.find(params[:id])
    car.to_json
  end
  post '/add_car' do 
    car = Car.create(
      category: params[:category],
      model: params[:model],
      fuel_type: params[:fuel_type],
      price: params[:price],
      seats: params[:seats],
      year: params[:year],
      front_url:params[:front_url],
      back_url:params[:back_url],
      side_url: params[:side_url],
      inside_url:params[:inside_url],
      transmission: params[:transmission]
    )
    car.to_json
  end
end
