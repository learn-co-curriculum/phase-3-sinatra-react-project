class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # post "/reviews" do
  #   Review.create()
  # end
  
  # post "/orders" do
  #   Order.create()
  # end

end
