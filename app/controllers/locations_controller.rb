class LocationsController < ApplicationController

  # GET: /locations
  get "/locations" do
    Location.all.to_json(include: [:reviews, :characters], except: [:created_at, :updated_at])
    ## do we need to change the Locations schema to include reviews?
    ## we also need characters?? or no?
    
  end

  # GET: /locations/new
  get "/locations/new" do
    
  end
  
  # POST: /locations
  post "/locations" do
    location = Location.create(name: params[:name], terrain: params[:terrain], inhabitants: params[:inhabitants], img_url: params[:img_url])
    if location.id
      halt 201, location.to_json
    else
      halt 400, location.errors.full_messages.to_sentence.to_json  
    end
    
  end

  # GET: /locations/5
  get "/locations/:id" do
    
  end

  #  GET: /locations/5/edit
  get "/locations/:id/edit" do
    
  end

  # PATCH: /locations/5
  patch "/locations/:id" do
    
  end

  # DELETE: /locations/5/delete
  delete "/locations/:id/delete" do
    location = Location.find(params[:id])
    location.destroy
    location.to_json
    
  end
end
