class ProfileController < ApplicationController
    set :default_content_type, 'application/json'
    
    # # Add your routes here
    get "/profiles" do
      Profile.all.to_json
    end
  
  end
  