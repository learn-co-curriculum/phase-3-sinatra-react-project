class MealItemsController < ApplicationController
    get '/meal-items' do 
        items = MealItem.all 
        items.to_json
    end

    get '/meal-items/:id' do 
        item = MealItem.find(params[:id])
        item.to_json
    end

    post '/meal-items' do 
        item = MealItem.create(meal_id: params[:meal_id], item_id: params[:item_id])
        item.to_json
    end

    patch '/meal-items/:id' do 
        item = MealItem.find(params[:id])
        item.update(meal_id: params[:meal_id], item_id: params[:item_id])
        item.to_json
    end

    delete '/meal-items/:id' do 
        item = MealItem.find(params[:id])
        item.destroy
        status 204  
    end
end
