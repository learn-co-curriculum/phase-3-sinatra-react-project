class FoodsController < ApplicationController
    
    get '/foods' do
      foods = Food.all
      foods.to_json
    end
  
    get "/foods/:id" do 
      food = Food.find(params[:id])
      food.to_json
    end
end