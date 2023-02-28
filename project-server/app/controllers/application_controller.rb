class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # route to list all items
  get "/" do
    # { message: "Good luck with your project!" }.to_json
    items = Item.all
    items.to_json
  end

end
