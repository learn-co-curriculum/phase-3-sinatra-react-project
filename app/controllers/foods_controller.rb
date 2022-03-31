class FoodsController < ApplicationController

    get '/foods' do 
        foods = Food.all
        foods.to_json
    end

    post '/foods' do
        newFood = Food.create({
            name: params[:name],
            quantity: params[:quantity],
            user_id: params[:user_id],
            fridge_id: params[:fridge_id]
        })
        newFood.to_json
    end

    delete '/foods/:id' do
        food = Food.find(params[:id])
        food.destroy
        food.to_json
      end

end