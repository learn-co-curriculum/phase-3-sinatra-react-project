class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/supersecretroute" do
    #{ message: "Good luck with your project!" }.to_json
    "buy LINK" #just testing
  end

end
