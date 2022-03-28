class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
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
