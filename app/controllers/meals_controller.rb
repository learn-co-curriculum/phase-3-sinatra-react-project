class MealsController < ApplicationController
    get '/meals' do 
        meals = Meal.all 
        meals.to_json
    end

    get '/meals/:id' do 
        meal = Meal.find(params[:id])
        meal.to_json
    end

    patch '/meals/:id' do 
        meal = Meal.find(params[:id])
        meal.update(day_id: params[:day_id], meal_number: params[:meal_number])
        meal.to_json
    end

    delete '/meals/:id' do 
        meal = Meal.find(params[:id])
        items = meal.meal_items 
        items.destroy_all
        meal.destroy
        status 204
    end
end