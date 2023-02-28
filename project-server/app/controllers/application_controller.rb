class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # route to list all items
  get "/charities" do
    # { message: "Good luck with your project!" }.to_json
    charities = Charity.all
    charities.to_json
  end

end
