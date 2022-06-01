class CarsController < ApplicationController
    get "/cars" do 
        Car.all.to_json
      end

    
end