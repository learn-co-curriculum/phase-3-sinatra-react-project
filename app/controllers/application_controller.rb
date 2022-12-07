class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

    get "/" do
      {message: "Working!"}.to_json
    end
  
    get "/destinations" do
      Destination.all.to_json(include: :reviews)
    end


    # HTTP VERBS (are going to determine the type of request our client side is making)
    
    # GET, POST, PATCH, DELETE

    # 'endpoint'/'path' - /url

    # block: what determines how we handle the request



end
