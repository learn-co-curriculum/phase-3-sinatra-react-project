class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    get "/destinations" do
      destinations = Destination.all
      destinations.to_json

    end


    # HTTP VERBS (are going to determine the type of request our client side is making)
    
    # GET, POST, PATCH, DELETE

    # 'endpoint'/'path' - /url

    # block: what determines how we handle the request



end
