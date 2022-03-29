class ApplicationController < Sinatra::Base
    
    get "/categories" do 
      categories = Category.all 
      categories.to_json
    end
    
    get "/categories/:name" do
      category = Category.find_by(params[:name])
      category.to_json
    end
  
    get "/foods/:id" do 
      food = Food.find(params[:id])
      food.to_json
    end
    
  end