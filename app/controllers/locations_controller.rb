class LocationsController < ApplicationController

  # GET: /locations
  get "/locations" do
    Location.all.to_json(include: [:reviews])
  end

  # GET: /locations/new
  get "/locations/new" do
    
  end

  # POST: /locations
  post "/locations" do
    
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
    
  end
end
