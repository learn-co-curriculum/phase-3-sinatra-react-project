class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/dogs" do
    dogs=Dog.all
    dogs.to_json  
  end
  get "/dogs/:id" do
    dogs=Dog.find(params[:id])
    dogs.to_json
  end
  delete "/dogs/:id" do
    dogs=Dog.find(params[:id])
    dogs.destroy
    dogs.to_json
  end


end
