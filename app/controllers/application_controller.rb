class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/cars" do
    car = Car.all
    car.to_json
  end
end
