class CharactersController < ApplicationController

  # GET: /characters
  get "/characters" do
    erb :"/characters/index.html"
  end

  # GET: /characters/new
  get "/characters/new" do
    erb :"/characters/new.html"
  end

  # POST: /characters
  post "/characters" do
    redirect "/characters"
  end

  # GET: /characters/5
  get "/characters/:id" do
    erb :"/characters/show.html"
  end

  # GET: /characters/5/edit
  get "/characters/:id/edit" do
    erb :"/characters/edit.html"
  end

  # PATCH: /characters/5
  patch "/characters/:id" do
    redirect "/characters/:id"
  end

  # DELETE: /characters/5/delete
  delete "/characters/:id/delete" do
    redirect "/characters"
  end
end
