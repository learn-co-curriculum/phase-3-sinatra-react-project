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

  delete "/meals/:id" do
    meal = Meal.find(params[:id])
    meal.destroy
    meal.to_json
  end

  patch "/meals/:id" do
    meal = Meal.find(params[:id])
    meal.update(
      time: params[:time],
      name: params[:name],
      tod: params[:tod]
    )
    meal.to_json
  end

  post "/meals/:id" do
    meal = Meal.create(
      time: params[:time],
      name: params[:name],
      tod: params[:tod]
    )
    meal.to_json
  end

  get "/dishes/:id/meal" do
    meal = Dish.find(params[:id]).meal
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

  delete "/dishes/:id" do
    dish = Dish.find(params[:id])
    dish.destroy
    dish.to_json
  end

  post "/dishes" do
    dish = Dish.create(
      food: params[:food],
      name: params[:name],
      day_id: params[:day_id],
      meal_id: params[:meal_id],
      img: params[:img]
    )
    dish.to_json
  end
    patch "/dishes/:id" do
      dish = Dish.find(params[:id])
      dish.update(dish_params)
      dish.to_json
    end

    def dish_params
      allowed_params = %w()
      params.select { |k,v| allowed_params.include?(k) }
    end
 
  
  end