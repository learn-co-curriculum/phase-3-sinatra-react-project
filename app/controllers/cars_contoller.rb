class CarsController < ApplicationController
    get "/cars" do 
        Car.all.to_json
      end

    post "/cars" do
        serialize(Car.create(car_params))
    end

    private
    def car_params
        allowed_params = %w(name year make model image_url)
        params.select {|param,value| allowed_params.include?(param)}
    end

    def serialize(car)
        car.to_json
    end
end