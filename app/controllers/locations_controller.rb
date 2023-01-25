class LocationsController < ApplicationController

  # GET: /locations
  get "/locations" do
    Location.all.to_json(include: [:reviews])
  end

  # GET: /locations/new
  get "/locations/new" do
    erb :"/locations/new.html"
  end

  # POST: /locations
  post "/locations" do
    redirect "/locations"
  end

  # GET: /locations/5
  get "/locations/:id" do
    erb :"/locations/show.html"
  end

  # GET: /locations/5/edit
  get "/locations/:id/edit" do
    erb :"/locations/edit.html"
  end

  # PATCH: /locations/5
  patch "/locations/:id" do
    redirect "/locations/:id"
  end

  # DELETE: /locations/5/delete
  delete "/locations/:id/delete" do
    redirect "/locations"
  end
end
