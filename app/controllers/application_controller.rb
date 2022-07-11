class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/days" do
    days = Day.all
    days.to_json
  end

  get "/days/:id" do
    day = Day.find(params[:id])
    day.to_json
  end

  get "/meals" do
    meals = Meal.all
    meals.to_json
  end

  get "/meals/:id" do
    meal = Meal.find(params[:id])
    meal.to_json
  end

  get "/dishes" do
    dishes = Dish.all
    dishes.to_json
  end

  get "/dishes/:id" do
    dish = Dish.find(params[:id])
    dish.to_json
  end
end
