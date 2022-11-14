class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/cars" do
    car = Car.all
    car.to_json(include: :reviews)
  end
  get '/cars/:id' do 
    car = Car.find(params[:id])
    car.to_json(include: :reviews)
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
      quantity: params[:quantity],
      transmission: params[:transmission]
    )
    car.to_json
  end
  post '/sell_car' do
    buyer = Buyer.create(
      name:params[:buyer_name],
      email: params[:buyer_email]
    )
    car = Car.filter(model: params[:model])

    car_quantity = car.quantity -= 1


    car.update(quantity: car_quantity)

    transaction = Transaction.create(buyer: buyer, car: car)
    
    buyer.to_json
  end
  patch '/update' do 
    car = Car.find(params[:id])
    car.update(
      price: params[:price],
      fuel_type: params[:fuel_type],
      year: params[:year],
      model: params[:model],
      price: params[:price],
      seats: params[:seats]
    )
    car.to_json
  end

get '/admin' do
  admin = Admin.all
  admin.to_json
end
get "/transactions" do
  transaction_arr =Transaction.buyer
  transaction_arr.to_json
end

post "/reviews"   do
reviews = Review.create(
  email:params[:email],
  comment:params[:comment],
  rating:params[:rating],
  car_id:params[:car_id]
)
reviews.to_json
end


end
